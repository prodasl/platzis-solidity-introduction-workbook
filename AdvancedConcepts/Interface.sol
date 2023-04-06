// SPDX-License-Identifier: GPL-3.0
/*
Interfaces: Allows us to define behavior that we want to have a contract.
            It implements in the same way as the contract inheritance.
            Their functions does not have implementation, just headers.    
*/

pragma solidity >=0.7.0 <0.9.0;

interface Sum {
    function sum(uint num1, uint num2) external returns(uint);
}