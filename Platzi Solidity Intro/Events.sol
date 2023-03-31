// SPDX-License-Identifier: GPL-3.0
/*
EVENTS
To notify that something happened to the USER. IT CONSUME GAS TRY TO USE IF IT IS STRICTLY NESCESARY
*/

pragma solidity >=0.7.0 <0.9.0;

contract Envents{
    uint[] public numbers;
    string public result;

    event StatNotification(bool condition);

    constructor(bool condition){
        if(condition){
            result = "Contidition True";
        }else{
            result = "Contidition False";
        }

        emit StatNotification(condition);
        for (uint i = 0; i < 10; i++){
            numbers.push(i);
        }
    }
}