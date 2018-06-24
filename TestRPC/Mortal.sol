pragma solidity ^0.4.0;
contract Mortal{
    
    address owner;
    
    modifier ownerOnly() {
      require(msg.sender == owner);
        _;
    }
    
    function kill() ownerOnly{     selfdestruct(owner); }
    function Hello() returns (address) {
        return owner;
    }
}