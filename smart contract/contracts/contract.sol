// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract patientdata{
    struct bloodglucose {
        uint reading1;
        uint reading2;
        uint reading3;
        uint reading4;
        uint reading5;
        uint reading6;
    }
    mapping(string =>bloodglucose) Allpatients;
    function SetPatientInfo(string memory regid,uint reading1,uint reading2,uint reading3,uint reading4,uint reading5,uint reading6) public
    {
        Allpatients[regid].reading1=reading1;
        Allpatients[regid].reading2=reading2;
        Allpatients[regid].reading3=reading3;
        Allpatients[regid].reading4=reading4;
        Allpatients[regid].reading5=reading5;
        Allpatients[regid].reading6=reading6;
    }
    
    function GetUserInfo(string memory regid) public view returns(uint,uint,uint,uint,uint,uint)
    {
        return(Allpatients[regid].reading1,Allpatients[regid].reading2,Allpatients[regid].reading3,Allpatients[regid].reading4,Allpatients[regid].reading5,Allpatients[regid].reading6);
    }
}  