// To demonstrate Inheritance and overiding
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// pragma solidity ^0.8.0;

// for inheritance from SimpleStorage
import "./SimpleStorage.sol";

contract ExtractStorage is SimpleStorage{
    // Overiding store funtion of SimpleStorage
    // To make function overridable you need to add virtual keyword
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 100;
    }
}