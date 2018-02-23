pragma solidity ^0.4.18;

import "./ERC223Compatible.sol";

/**
 * Interface which is compatible with ERC223
 */
contract ERC223CompatibleCont is ERC223Compatible {
    function tokenFallback(address _from, uint _value, bytes _data) public {
        
    }
}