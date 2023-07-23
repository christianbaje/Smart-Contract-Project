# Smart Contract Project

This Solidity program is a simple contract program that demonstrates the basic functionality of the things learned in the ETH + AVAX Module. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a single function that returns the string "Hello World!". This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint256 public someValue;

    function requireE(uint256 value) public {
        // The require statement is used to check conditions that users must fulfill.
        // If the condition is not met, the transaction will be reverted, and any changes will be rolled back.
        require(value > 0, "Value must be greater than 0");
        someValue = value;
    }

    function assertE(uint256 value) public {
        // The assert statement is used to check internal errors and conditions that should never occur.
        // If the condition is not met, the contract execution will be halted, and all state changes will be reverted.
        assert(value != 0);
        someValue = value;
    }

    function revertE(uint256 value) public {
        // The revert statement is used to handle custom error conditions.
        // It is commonly used to provide informative error messages to users.
        if (value == 0) {
            revert("Value cannot be 0");
        }
        someValue = value;
    }
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to the most updated.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

Christian Baje


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
