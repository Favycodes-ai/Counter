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
        function decrement() public {
        require(number > 0, "counter is already zero");
        number--;
    }


 function setNumber(uint256 newNumber) public {
    number = newNumber;
 }


}
