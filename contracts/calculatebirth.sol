
//Anushka Agrawal 2019140002 BE-IT
//please write a smart contract that calculates age based on the input as birth year
//SPDX-License- Identifier

pragma solidity >=0.7.0;

contract calcAge{

    uint birth_year;
    uint age;

    function enterYear(uint birthyear) public {

        birth_year = birthyear;
    } 

    function calculateAge() public{
        age = 2022 - birth_year;
        //return age;
    }

    function returnAge() public view returns(uint){
        // age = 2022 - birth_year;
        return age;
    }
}