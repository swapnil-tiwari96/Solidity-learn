// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract acceptEther {
    mapping (address => uint) public balances;
    address payable wallet;

    constructor(address payable _wallet) {
        wallet = _wallet;
    }
    
    fallback() external payable {

    }

    receive() external payable {

    }

}
