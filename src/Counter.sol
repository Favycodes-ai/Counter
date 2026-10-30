// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    uint256 public number;

    function set(uint256 _number) public {
        number = _number;
    }

    function increment() public {
        number += 1;
    }
}
