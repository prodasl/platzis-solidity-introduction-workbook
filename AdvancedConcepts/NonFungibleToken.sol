// SPDX-License-Identifier: GPL-3.0
/*
TOKEN
A token can represents an idea or the abstraction of an object or concept of the real
world.
FUNGIBLE TOKENS.
Tokens that are interchangeable with each other. 
E.g:    Bitcoin, Ethereum, Tether(USDT), IOTA.
        If you purchase something with 1 Bitcoin, and then you ask for a refund
        and the seller give you another Bitcoin the value interchanged are the same,
        taking the same behavior as the money in the real world.
STANDARD
The most used standard to emit it is ERC-721, it is an interface not an implementation
to give you the mold of the most basic and required functionality of a non-fungible 
token, additionally it have an tokenid and the capability of store more specific 
features for each token (token-uri). 
*/

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NonFungibleToken is ERC721("NonFungibleToken", "NFT"){

    constructor() {
        _mint(msg.sender, 1);
    }

}