// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory {
    // Create a copy of SimpleStorage
    SimpleStorage[] public  simpleStorageArray;

    // Function to create simple storage
    function createSimpleStorageContract () public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore() public{
        
    }
}