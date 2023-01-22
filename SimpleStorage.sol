// You have to  always mention the version of solidity used because  sol is evloving language
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

// First Contract address deployed on goerli test net network: 0x89801D2d74c1Bb46Bd3F1ce324b2B0688D54Bf2e

contract SimpleStorage {
    // initializing a variable
    uint256 favoriteNumber;
    // Defining the struct 
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    People[] public people;

    // Creating a map  String  name is mapped to fav number
    mapping(string => uint256) public nameToFavoriteNumber;

    // Function to store number
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }
    
    // Getter function created by me
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    // Function to add to array
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Another  method
        // People memory newPerson = People({ favNumber: _favNumber, Name: _Name });
        // people.push(newPerson);
        people.push(People(_favoriteNumber, _name));
        // Adding mapping to array
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}