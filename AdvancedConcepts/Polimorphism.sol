// SPDX-License-Identifier: GPL-3.0
/*
POLIMORFISM.
Way to use different implementations of a same function matching the parameters but
with different logic inside, the way to choose the implementation required is using
the address of the contract.
Interfaces: Allows us to define behavior that we want to have a contract.
            It implements in the same way as the contract inheritance.
            Their functions does not have implementation, just headers.          
*/

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";
import "../Platzi Solidity Intro/Modifiers.sol";

contract Polimorphism {
    function SumFromContract(uint num1, uint num2, address contractAddr) 
    public returns(uint){
        Sum SumInterface = Sum(contractAddr);
        return SumInterface.sum(num1, num2);
    }
}