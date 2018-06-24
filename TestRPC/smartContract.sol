pragma solidity ^0.4.18;

contract Coursetro {
    
   string fName;
   uint age;
   address owner;
   
   // modifier function used in setInstructor
   
   modifier ownerOnly(){
      require(msg.sender==owner);
      _;
   }
   
   constructor() public{
       owner=msg.sender;
   }
   
   event Instructor(string fName,uint age);
   
   function setInstructor(string _fName, uint _age) public ownerOnly{
       fName = _fName;
       age = _age;
      emit Instructor(_fName,_age);
   }
   
   function getInstructor() public constant returns (string, uint) {
       return (fName, age);
   }
    
}