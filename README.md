# Implementation of require(), assert() and revert() statements.

This Solidity program demonstrates the basic syntax and functionality of the Solidity programming language.
## Description

The Functions_Errors smart contract is a Solidity-based contract designed to perform basic arithmetic operations while demonstrating error handling techniques. It includes functions to add values to a cumulative result (add), retrieve the current result (getResult), and reset the result to zero (resetResult). The add function requires the input value to be positive, ensuring valid input with a require statement. The getResult function employs an assert statement to guarantee the result is non-negative, reflecting an internal consistency check. The resetResult function reverts the transaction if an attempt is made to reset an already zero result, showcasing the use of the revert statement to handle exceptional conditions. The contract is a straightforward example of how to implement and manage state while incorporating Solidity's error handling mechanisms to ensure reliable and predictable behavior.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a.sol extension (e.g., Project1.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Functions_Errors {
    uint256 private result;

    function add(uint256 value) public {
        require(value > 0, "Value must be positive");
        result += value;
    }

    function getResult() public view returns (uint256) {
        assert(result >= 0);
        return result;
    }

    function resetResult() public {
        if (result == 0) {
            revert("Result is already zero");
        }
        result = 0;
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Project1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Project1" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling all the functions. 

## Author


Ishan Ojha  
[@Ishan Ojha](https://ishanojhahs@gmail.com)
