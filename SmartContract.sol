// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint256 public someValue;

    function requireExample(uint256 value) public {
        // The require statement is used to check conditions that users must fulfill.
        // If the condition is not met, the transaction will be reverted, and any changes will be rolled back.
        require(value > 0, "Value must be greater than 0");
        someValue = value;
    }

    function assertExample(uint256 value) public {
        // The assert statement is used to check internal errors and conditions that should never occur.
        // If the condition is not met, the contract execution will be halted, and all state changes will be reverted.
        assert(value != 0);
        someValue = value;
    }

    function revertExample(uint256 value) public {
        // The revert statement is used to handle custom error conditions.
        // It is commonly used to provide informative error messages to users.
        if (value == 0) {
            revert("Value cannot be 0");
        }
        someValue = value;
    }
}
