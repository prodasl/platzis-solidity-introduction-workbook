// SPDX-License-Identifier: GPL-3.0
/*
STORAGE TYPES
Storage: Persists in the contract. HIGHER COST
Memory: Temp data, function scope. LOWER COST
Calldata: parameters scope, similar to memory.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Storages{
    string private name;

    constructor(string memory word){
        name = word;
    }
}