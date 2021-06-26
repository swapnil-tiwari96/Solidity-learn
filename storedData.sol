// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract simpleStorage {

uint8 input; 

function set(uint8 _input) public {
    input = _input;
}

function get() public view returns(uint8) {
    return input; 
}

}