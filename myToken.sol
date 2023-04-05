// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract myToken {
    string public tokenName = "Workdone";
    string public tokenAbberv = "WD";
    uint public totalSupply = 0;

    mapping (address => uint) public balances;

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }
    function burn(address _address, uint _value) public {
        if (balances[_address] >= totalSupply){
        totalSupply -= _value;
        balances[_address] -= _value;
        }
    }
}