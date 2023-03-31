// SPDX-License-Identifier: GPL-3.0
/*
NORMAL TYPES
int, bool, string.
SPECIAL TYPES.
uint:       Integer numbers without sign.
address:    To store address in Ethereum.
bytes:      Bytes array without specific format.  
GLOBAL VARIABLES
msg:        Related with the configuration of the message (a parameter sended from the last sender).
tx:         Related with the current transaction (as user origined the transaction).
block:      Related with the current block.
VARIABLES DOMAIN
local variables: temporal data inside of a function.
state variables: permanent data in the contract.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Structure {
    int qty;
    uint qtyWithoutSign;
    address addr;
    bool signed;

    constructor(bool isSigned){
        addr = msg.sender;
        signed = isSigned;
    }

}
