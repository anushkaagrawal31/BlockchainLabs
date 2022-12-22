//Anushka Agrawal (2019140002)
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract ProfitLoss_Anushka{
    address owner;
    constructor(){
        owner = msg.sender;
    }

    function calculate(uint cp, uint sp) public view returns(string memory,uint){

        require( owner == msg.sender, "Only the owner can use the function");

        if(sp>cp){
            return("Profit",sp-cp);
        }

        else if(cp>sp){
            return("Loss",cp-sp);
        }

        else{
            return ("Neither profit nor loss",0);
        }
    }
}