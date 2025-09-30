// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script} from "lib/forge-std/src/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public returns (address) {
        
        vm.startBroadcast();
        

        Counter counter = new Counter();

        vm.stopBroadcast();
        return address(counter);
    }

    function increase(address _counterAddress) public {
        vm.startBroadcast();
        Counter(_counterAddress).increment();
        vm.stopBroadcast();
    }
}
