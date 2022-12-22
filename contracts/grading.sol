//Anushka Agrawal (2019140002)
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract grading_Anushka{
    address owner;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(owner==msg.sender,"Only Owner of this contract can call this!");
        _;
    }

    function calculateGrade(uint sub1,uint sub2,uint sub3, uint sub4,uint sub5)public view onlyOwner returns(string memory, uint256 grade_marks){
        uint total=(sub1+sub2+sub3+sub4+sub5);
        uint percent=total/5;
        if(percent>=90){
            return ("Grade A",percent);
        }
        else if(percent>=70){
            return ("Grade B", percent);
        }
        else if(percent>=40){
            return ("Grade C", percent);
        }
        else{
            return ("Fail", percent);
        }
    }
    
}
