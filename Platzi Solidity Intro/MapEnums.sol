// SPDX-License-Identifier: GPL-3.0
/*
Mappings: Arrays with identifier to find the values fast.
Enum:   Array of strings that are internally identified by a number.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Balance{
    mapping(address => uint)public balance;
    enum Status { Started, Finished}

    Status public contractStat;

    constructor(){
        contractStat = Status.Started;
        balance[msg.sender] = 1000;
        contractStat = Status.Finished;
    }
}