// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ControlStructure{
    uint[] public numbers;
    string public result;

    constructor(bool condition){
        if(condition){
            result = "Contidition True";
        }else{
            result = "Contidition False";
        }

        for (uint i = 0; i < 10; i++){
            numbers.push(i);
        }
    }
}