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
