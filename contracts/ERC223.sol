pragma solidity ^0.4.18;


/**
 * ERC223 token standard interface
 */
contract ERC223 {
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 indexed _value,
        bytes _data
    );
    
    function transfer(address _to, uint _value) public returns (bool);
    
    function transfer(address _to, uint _value, bytes _data) public returns (bool);
    
    function totalSupply() public view returns (uint256 _totalSupply);
    
    function name() public pure returns (string _name);
    
    function symbol() public pure returns (bytes32 _symbol);
    
    function decimals() public pure returns (uint8 _decimals);
    
    function balanceOf(address _owner) public view returns (uint balance);
}