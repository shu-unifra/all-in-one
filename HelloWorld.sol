// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

/**
 * @title HelloWorld
 * @author Gemini Code Assist
 * @notice A simple contract to say "Hello World".
 */
contract HelloWorld {
    string public greeting;

    constructor() {
        greeting = "Hello World";
    }

    function setGreeting(string memory _newGreeting) public {
        greeting = _newGreeting;
    }
}