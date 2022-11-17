// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Dapp {
    uint256 totalDapps;

    constructor() {
        console.log("Yo yo, sup! The name's contract and I am kinda smart.. hehe");
    }

    function dapp() public {
        totalDapps += 1;
        console.log("%s has dapped you!", msg.sender);
    }

    function getTotalDapps() public view returns (uint256) {
        console.log("We have %d total dapps!", totalDapps);
        return totalDapps;
    }
}