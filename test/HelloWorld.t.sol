// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public hello;

    function setUp() public {
        hello = new HelloWorld();
    }

    function test_InitialGreeting() public view {
        assertEq(hello.greeting(), "Hello World");
    }

    function test_SetGreeting() public {
        string memory newGreeting = "Hello Foundry";
        hello.setGreeting(newGreeting);
        assertEq(hello.greeting(), newGreeting);
    }
}
