//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;
 
contract DynamicArrays{
  // dynamic array of type uint
  uint[] public numbers;
  
  // returning length
  function getLength() public view returns(uint){
    return numbers.length;
  }
  
  // appending a new element
  function addElement(uint item) public{
    numbers.push(item);
  }
  
  // returning an element at an index
  function getElement(uint i) public view returns(uint){
    if(i < numbers.length){
      return numbers[i];
    }
      return 0;
  }
  
  
  // removing the last element of the array
  function popElement() public{
    numbers.pop();
  }
  
  function f() public{
  // declaring a memory dynamic array
  // it's not possible to resize memory arrays (push() and pop() are not available).
  uint[] memory y = new uint[](3);
    y[0] = 10;
    y[1] = 20;
    y[2] = 30;
    numbers = y;
  }
 
}