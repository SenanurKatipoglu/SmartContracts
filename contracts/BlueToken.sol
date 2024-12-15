// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
* created by KATIPOGLU 
*/

contract BlueToken{

// Written ACCORDING TO ERC20 STANDARDS

  string public name = "Blue Token";
  uint256 public totalSupply; 
  mapping (address => uint256) public balances;
  mapping (address => mapping (address => uint256)) public allowances;

  event Transfer(address indexed _from, address indexed _to, uint _value);
  event Approve (address indexed _owner, address indexed _spender, uint256 _value);


   constructor(string memory _name, uint256 _initiallSupply){
       name = _name;
       totalSupply = _initiallSupply;
       balances[msg.sender] = totalSupply;
   }
   
  
   function totalOfSupply() public view returns (uint256) {
       return totalSupply;
   }

   function balanceOfToken(address _owner) public view returns (uint256) {
     return balances[_owner];
   }

   function transferToken(address _to, uint256 _value) public returns (bool) {
    require(balances[msg.sender] >= _value, "Insufficient Funds");

    require(_to != address(0), "Invalid destination address");

     balances[msg.sender] -=_value;
     balances[_to] += _value;

     emit Transfer(msg.sender, _to, _value);
 
    return true;
   }

   function approve(address _spender, uint256 _value) public returns (bool){
     allowances[msg.sender][_spender] = _value;
     emit Approve(msg.sender, _spender, _value);
     return true;
   }

   function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        require(_from != address(0), "ERC20: transfer from the zero address");
        require(_to != address(0), "ERC20: transfer to the zero address");
        require(balances[_from] >= _value, "ERC20: insufficient balance");
        require(allowances[_from][msg.sender] >= _value, "ERC20: allowance exceeded");

        balances[_from] -= _value;
        balances[_to] += _value;
        allowances[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
   }

   function allowance(address _owner, address _spender) public view returns (uint256){ 
     return allowances[_owner][_spender];
   }

}