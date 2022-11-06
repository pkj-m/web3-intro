//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFunnyContract {
    uint public count;
    address public owner;

    constructor () public {
        owner = msg.sender;
    }

    function SendMoney(uint _amount) public {
        payable(address(msg.sender)).transfer(_amount);
    }

    receive() external payable {
        this;
    }
}



