// SPDX-License-Identifier: GPL-3.0
/*
INHERITANCE.
Similar to object oriented programming.
We need to point which parameter from the parent constructor we want to use.
Override: Functions defined as "virtual" to point that this function will be redefined.
          The function defined as "override" redefines the corresponding "virtual" func.
          There may be functions without implementation as abstarct contract to point
          for models to child contracts with posible implementation of this funcs.
Interfaces: Allows us to define behavior that we want to have a contract.
            It implements in the same way as the contract inheritance.
            Their functions does not have implementation, just headers.
Super:      To access to parent functions directly.          
*/

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";
import "../Platzi Solidity Intro/Modifiers.sol";

contract Inheritance is Sum , Modifiers {

    constructor(string memory newName) Modifiers(newName){
        
    }

    function sum(uint num1, uint num2) public override IsOwner() view returns(uint){
        return num1 + num2;
    }


}