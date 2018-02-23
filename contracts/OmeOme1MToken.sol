pragma solidity ^0.4.18;

import "./SafeMath.sol";
import "./ERC223.sol";
import "./ERC223Compatible.sol";


/**
 * Limited time distribution type ERC223 token
 * Created sorely for celebrating 1M blocks been mined
 * Not expecting it to have any value
 */
contract OmeOme1MToken is ERC223 {
    // Attach SafeMath functions to uint
    // SafeMath.add(uint, uint) is same as uint.add(uint)
    using SafeMath for uint;

    // Distribution will be over if block number is larger than this constant  
    uint constant internal BLOCK_NUMBER_DISTRIBUTION_END = 1100000;
    uint constant internal DISTRIBUTION_AMOUNT = 100e18;

    uint256 public totalSupply = 0;
    string constant internal _name = "OmeOme1MToken";
    bytes32 constant internal _symbol = "💯万🎉;
    uint8 constant internal _decimals = 18;
    
    mapping(address => uint) balanceMap;
    
    /**
     * Claim event called when someone claimed
     */
    event Claim(address indexed claimer);
    
    /**
     * Fallback function when someone sent nuko to this contract
     */
    function() external payable {
        revert();   // Not accept any donations or funds to be sent to this contract
    }
    
    /**
     * Claim tokens by calling this function
     */
    function claim() public {
        require(isDistributionTime());  // Need to be in distribution time, otherwise revert
        require(balanceMap[msg.sender] == 0);   // Claimer's balance must be 0 to receive tokens
        // Cannot claim multiple tokens because people cannot transfer their tokens as long as are in distribution time
        // and if they claim once then balance will be not 0
        
        balanceMap[msg.sender] = balanceMap[msg.sender].add(DISTRIBUTION_AMOUNT);
        totalSupply = totalSupply.add(DISTRIBUTION_AMOUNT); // Total supply increases as new tokens claimed
        
        Claim(msg.sender);  // Call claim event
    }
    
    /**
     * Transfer tokens to an address with empty tx data
     * Throw if target is a contract and does not support tokenFallback function
     * Also throw if an overflow happened during an execution
     */
    function transfer(address _to, uint _value) public returns (bool) {
        bytes memory emptyBytes;    // Create empty byte array
        
        return transfer(_to, _value, emptyBytes);  // Call transfer function with empty data
    }
    
    /**
     * Transfer tokens to an address with specified data
     * Data will be recorded into the blockchain
     * Throw if the _to is a contract and it does not support tokenFallback function
     * Also throw if an overflow happened durin an execution
     */
    function transfer(address _to, uint _value, bytes _data) public returns (bool) {
        require(!isDistributionTime()); // Must not be dustribution time
        require(_value != 0);   // Tx of sending 0 tokens should not be accepted even if data is not empty 
        require(balanceMap[msg.sender] >= _value);  // Sender must have enough tokens to send
        
        if (isContract(_to)) {
            // If address sent to is contract then check for compatibility
            testTokenFallbackOf(msg.sender, _to, _value, _data);    // Throw if a contract is not capable of handling ERC223 tokens or rejected
        }
        
        balanceMap[msg.sender] = balanceMap[msg.sender].sub(_value);
        balanceMap[_to] = balanceMap[_to].add(_value);
        
        Transfer(msg.sender, _to, _value, _data);   // Call Transfer event
        
        return true;    // Successfully transferred tokens
    }
    
    function totalSupply() public view returns (uint256 _totalSupply) {
        return totalSupply;
    }
    
    function name() public pure returns (string __name) {
        return _name;
    }
    
    function symbol() public pure returns (bytes32 __symbol) {
        return _symbol;
    }
    
    function decimals() public pure returns (uint8 __decimals) {
        return _decimals;
    }
    
    /**
     * Return balance of an address 
     */
    function balanceOf(address _owner) public view returns (uint balance) {
        return balanceMap[_owner];
    }
    
    /**
     * Return bool if it is in distribution time
     */
    function isDistributionTime() internal view returns (bool _isDistributionTime) {
        return block.number <= BLOCK_NUMBER_DISTRIBUTION_END;
    }
    
    /**
     * Return true if _address is of contract, false if it is normal wallet address
     */
     function isContract(address _address) internal view returns (bool _isContract) {
         uint codeLength;
         
         assembly {
             // Get the code length of an address
             codeLength := extcodesize(_address)
         }
         
         return codeLength > 0; // If code exist then it is contract
     }
    
    /**
     * Test an address if it has tokenFallback function, if not, reverted
     */
    function testTokenFallbackOf(address _from, address _to, uint _value, bytes _data) internal {
        ERC223Compatible compatibleContract = ERC223Compatible(_to);
        
        compatibleContract.tokenFallback(_from, _value, _data);    // Throw if a contract does not support tokenFallback function or rejected
    }
}