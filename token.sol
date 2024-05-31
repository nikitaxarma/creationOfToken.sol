// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {

    string public name = "TokenName";
    string public symbol = "TKN";
    uint256 public totalSupply=0;

    mapping(address => uint) public stable;

    

    function mint(address _rate, uint _portion) public {
        totalSupply += _portion;
        stable[_rate] += _portion;
    }

    function burn(address _rate, uint _portion) public {
      if(stable[_rate]>=_portion){
      
        totalSupply -= _portion;
        stable[_rate] -= _portion;
    }
}
}
