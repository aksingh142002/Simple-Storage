// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

error NotOwner();
contract SimpleStorage {
    uint16 num;
    address immutable owner;
    event Log(uint16 newNum);

    modifier onlyOwner{
        if(msg.sender != owner) {revert NotOwner();}
        _;
    }

    constructor(){
        owner = msg.sender;
    }
    function set(uint16 _num) public  onlyOwner{
        // require(msg.sender == owner, "Unauthorized User!!!");
        num = _num;
        emit Log(_num);
    }

    function reset() public onlyOwner{
        // require(msg.sender == owner, "Unauthorized User!!!");
        num = 0;
        emit Log(num);
    }

    function get() public view returns(uint16) {
        return num;
    }
}