//Anushka Agrawal (2019140002)
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract looping_Anushka{

    function looping(uint n) public pure returns(uint){
       
        uint sum;

        for(uint i=0; i <= n; i++){
            sum += i;
        }

        return(sum);
    }

    
}