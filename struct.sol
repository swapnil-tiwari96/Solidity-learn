// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract myContract {
    
    uint256 public personCount;
    myHuman public human1;
    myHuman[] public human2;
    mapping (uint=>myHuman) public person;
    struct myHuman {
        string firstName;
        string lastName;
        uint age;
        bool isMarried; 
    }

    function directobject() public {
        human1 = myHuman("Ritesh", "modi", 26, true);
    }

    function arraywithinput(string memory _firstName, string memory _lastName, uint _age, bool _isMarried) public {
        human2.push(myHuman(_firstName, _lastName, _age, _isMarried));
    }
    
}