// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Dao is Ownable {
    uint256 public daoVal;

    constructor(address _govContract) {
        transferOwnership(_govContract);
    }

    function updateValue(uint256 _newVal) public onlyOwner {
        daoVal = _newVal;
    }
}
