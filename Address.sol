// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract SendMoneyExample {

    uint public balanceReceived;
    

    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function transfer() public payable {
        payable(msg.sender).transfer(msg.value);
    }

}
