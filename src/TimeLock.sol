//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    /**
     * @dev Initializes the contract with a minimum delay, proposers, and executors.
     * @param minDelay The minimum delay for the time lock.
     * @param proposers The addresses that can propose actions.
     * @param executors The addresses that can execute actions.
     */
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
    ) TimelockController(minDelay, proposers, executors, msg.sender) {}
}
