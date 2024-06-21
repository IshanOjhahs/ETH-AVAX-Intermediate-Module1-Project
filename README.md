# Implementation of require(), assert() and revert() statements.

This Solidity program demonstrates the basic syntax and functionality of the Solidity programming language.
## Description

This project features a simple Solidity smart contract designed to demonstrate the use of the require(), assert(), and revert() statements for error handling. The contract includes functions to set, retrieve, and reset a stored value, with built-in validations to ensure proper usage. The setValue function allows setting a new value while ensuring the input is positive using the require() statement. The getValue function retrieves the stored value and employs the assert() statement to ensure the value has been set and is greater than zero. The resetValue function resets the stored value to zero, using the revert() statement to prevent resetting if the value is already zero. This contract provides a clear and practical example of implementing error handling mechanisms in Solidity to create robust and secure smart contracts.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a.sol extension (e.g., Project1.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ValueContract {
    uint256 private value;

    function setValue(uint256 newValue) public {
        require(newValue > 0, "Value must be positive");
        value = newValue;
    }

    function getValue() public view returns (uint256) {
        assert(value > 0);
        return value;
    }

    function resetValue() public {
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Project1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Project1" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling all the functions. 

## Author


Ishan Ojha  
[@Ishan Ojha](https://ishanojhahs@gmail.com)
