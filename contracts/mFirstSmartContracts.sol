// SPDX-License-Identifier: GP-3.0

//Version
pragma solidity 0.8.0;

//Contract

contract myFirstSmartContract {
    uint256 number;

    function store (uint256 num) public {
        number = num;

    }

    function retrieve() public view returns (uint256) {
        return number;
    }
}