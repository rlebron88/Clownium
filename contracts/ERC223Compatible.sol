pragma solidity ^0.4.18;

/**
 * Interface which is compatible with ERC223
 */
contract ERC223Compatible {
    function tokenFallback(address _from, uint _value, bytes _data) public;
}