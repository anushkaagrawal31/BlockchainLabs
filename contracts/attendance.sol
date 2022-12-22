//Anushka Agrawal (2019140002)
// The changed code with different name of contract and require error
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Anushka{

    address owner;
    constructor() {
        owner = msg.sender;
    }

    function college(uint noOfLecs) public view returns(string memory){

        require(owner == msg.sender, "The function can be accesed by owner only");

        if(noOfLecs>=8){
            return("Present");
        }
        else if((noOfLecs>=4)&&(noOfLecs<8)){
            return ("Half Day");
        }
        else{
            return("Absent");
        }

    }
}