// SPDX-License-Identifier: GPL-3.0
/*
GAS
Computing power required to execute an action.
GAS PRICE.
Current price of gas based the network use.
Gas total = (gas x Gas Price) + Gas fee
*/

pragma solidity >=0.7.0 <0.9.0;

contract Gas{
    uint public num;

    function setNum(uint input) public {
        num = input;
    }
}