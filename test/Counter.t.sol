// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);

    }function testDecrement() public {
        counter.increment();
        counter.decrement();
        assertEq(counter.number(), 0);
    }

    function testSetNumber() public {
        counter.setNumber(42);
        assertEq(counter.number(), 42);
    }

}
