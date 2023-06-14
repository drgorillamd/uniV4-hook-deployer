// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";

import {Hooks} from "@uniswap/core-next/contracts/libraries/Hooks.sol";

contract DeployHook is Script {
    // This should reuse the struct in the lib instead
    bool beforeInitialize = true;
    bool afterInitialize = true;
    bool beforeModifyPosition = true;
    bool afterModifyPosition = true;
    bool beforeSwap = true;
    bool afterSwap = true;
    bool beforeDonate = true;
    bool afterDonate = true;

    function setUp() public {}

    function run() public {
        vm.broadcast();
        // Check if factory exists, if not deploy

        // ffi to run eradicate2 -> should it be rather a yarn script (ie build, get the hash, check if factory exists -> deploy if needed, run eradicate2, deploy via factory)

        // check the address has the corresponding hooks with lib hooks.validateHookAddress, if not, revert

        // call to factory to deploy hook
    }
}
