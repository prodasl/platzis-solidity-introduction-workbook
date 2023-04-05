// SPDX-License-Identifier: GPL-3.0
/*
WAYS TO RECEIVE ETHER IN A CONTRACT
Receive: Optional function that executes when it receive of Ether w/o parameters.
Fallback: Function that executes when it receive of Ether with parameters.
Payable function: To receive Ether in a specific function with the type Payable.

NORMAL FLOW
- Check if there is a function with the specified signature.
- If it is not found, search for a function fallback that receive parameters.
- If there is a transfer w/o parameters search for a receive functions, else search
  a fallback function w/o parameters.

*/

pragma solidity >=0.7.0 <0.9.0;

contract Reception {

    mapping(address => uint) balances;

    uint public etherSent;

    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    fallback() external payable{

    }

    function receiveEther(uint num) public payable {
        etherSent = msg.value;

        uint amount = num; //just to not receive a warning for non used variable
    }
}