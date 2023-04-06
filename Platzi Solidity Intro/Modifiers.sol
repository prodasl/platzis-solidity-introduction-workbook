// SPDX-License-Identifier: GPL-3.0
/*
ETHER TRANFERS FROM A CONTRACT
Send: Sends an amount of Ether to an address and returns false if is not successful.
Transfer: Sends an amount of Ether to an address and stops the function if is 
          not successful.
Call: Sends an amount of Ether to an address and returns the operation result.

Send and transfer require payable type addresses.
Send and transfer have gas limit of 2300 gas.

Call allows call functions if the address is a contract.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Modifiers {
    address private owner;
    string private ownerName;
    
    constructor(string memory name) {
        owner = msg.sender;
        ownerName = name;
    }
    
    function Sum(uint num1, uint num2) public view IsOwner() returns (uint) {
        return num1 + num2;
    }
    
    modifier IsOwner() {
        if (msg.sender != owner) revert();
        _;
    }
    
}