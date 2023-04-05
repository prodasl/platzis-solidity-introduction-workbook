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

contract Transfers{
//Add payable feature to be able to send funds to the contract
    constructor() payable {
        
    }

    function transferBySend(address target, uint amount) public returns(bool){
        bool output = payable(target).send(amount);
        return output;
    }

    function transferByTransfer(address target, uint amount) public{
        payable(target).transfer(amount);
    }

    function transferByCall(address target, uint amount) public returns(bool){
        (bool output, bytes memory res) = target.call{value:amount}("");
        return output;
    }

}