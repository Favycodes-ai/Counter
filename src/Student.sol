// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Student {
    struct Info {
        string name;
        uint256 level;
    }

    mapping(address => Info) public students;

    event StudentAdded(address indexed studentAddress, string name, uint256 level);

    function addStudent(string calldata _name, uint256 _level) public {
        students[msg.sender] = Info(_name, _level);
        emit StudentAdded(msg.sender, _name, _level);
    }

    function getMyName() public view returns (string memory) {
        return students[msg.sender].name;
    }
}
