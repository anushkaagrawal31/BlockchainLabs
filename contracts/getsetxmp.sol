//SPDX-License- Identifier:MIT
pragma solidity ^0.4.0;

contract MessageContract {

    string message = " Hello World";

    function getMessage() public view returns(string){
        return message;
    }

    function setMessage(string newMessage) public{
        message =  newMessage;
    }
}