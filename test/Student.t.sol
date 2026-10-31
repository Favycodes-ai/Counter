// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "forge-std/Test.sol";
import "../src/Student.sol";

contract StudentTest is Test {
Student public school;

function setUp() public {
school = new Student();
}

function testAddStudent() public {
school.addStudent("Favour", 100);
(, uint256 level) = school.students(address(this));
assertEq(level, 100);
}
}