// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Dapp {
    uint256 totalDapps;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function dapp() public {
        totalDapps += 1;
        console.log("%s has dapped!", msg.sender);
    }

    function getTotalDapps() public view returns (uint256) {
        console.log("We have %d total dapps!", totalDapps);
        return totalDapps;
    }
}