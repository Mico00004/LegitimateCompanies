pragma solidity 0.4.24;

contract LegitimateCompanies{
   //We hard code the owner's address for security.
   address constant public dti = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
   string[] industries = ["Airlines","Hotel","Hospital"];
   bytes allCompanies;
    
   struct Register {
      uint businessNumber;
      string companyName;
      string industry;
      bool status;
   }
   
   modifier onlyOwner() {
     require(msg.sender == dti, "Not authorized.");
     _;
   }

   mapping(uint => Register) registers;
   uint id;

   function CreateRegistration(uint _businessNumber,string _companyName, uint _industry) public payable {
       require(msg.value == 1 ether);
       require(msg.sender != dti);
       Register memory newRegister;
       newRegister.businessNumber = _businessNumber;
       newRegister.companyName = _companyName;
       newRegister.industry = industries[_industry];
       registers[id] = newRegister;
       newRegister.status = false;
       dti.transfer(1 ether);
       id++;
    allCompanies =bytes(string(abi.encodePacked(allCompanies,_companyName)));
   }
   function getInfoRegistration(uint _id) public view returns (uint,string, string,bool) {
         return (registers[_id].businessNumber,registers[_id].companyName,registers[_id].industry,registers[_id].status);

   }
   function verifyCompany(uint _id) onlyOwner public {
       registers[_id].status = true;
   }
   function showCompanies() onlyOwner public view returns(bytes){
       return allCompanies;
   }
}
