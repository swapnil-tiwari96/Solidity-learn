// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract myContract {

    constructor() {
        owner = msg.sender;
    }
    struct Person {
        uint8 id;
        string firstName;
        string lastName;
    }

    uint8 internal counter = 0;
    mapping (uint8 => Person) public people;
    address owner;

    modifier onlyBy() {
        require(msg.sender == owner);
        _;
    }

    function addPerson (string memory _firstName, string memory _lastName) public onlyBy{
        counter +=1;
        people[counter] = Person(counter, _firstName, _lastName);
    }

}