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
