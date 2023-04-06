// SPDX-License-Identifier: GPL-3.0
/*
IMPORT DEPENDENCY
Reuse tested and well build functions or structures from libraries.

Reuse tested and well build functions from another contracts.

*/
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
pragma solidity >=0.7.0 <0.9.0;

contract Libraries{

    function sumNums(uint num1, uint num2) public pure returns (uint){
        return SafeMath.add(num1, num2);
    }
}