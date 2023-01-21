// You have to  always mention the version of solidity used because  sol is evloving language
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// First Contract address deployed on goerli test net network: 0x89801D2d74c1Bb46Bd3F1ce324b2B0688D54Bf2e

contract SimpleStorage{
    // initializing a variable
    uint256  favNumber;

    // Function to store number
    function store (  uint _favNum ) public{
     favNumber=_favNum;
    }

    // Created a struct
    People  public person  = People ({favNumber:12345, Name:"Atharva"});

    // Defining the struct 
    struct  People {
        uint256  favNumber;
        string Name;
    }

    // Creating an array
    // uint256[] public  favNumberList;
    People[] public  people;

    // Getter function created by user
    function retrieve() public view returns  (uint){
        return favNumber;
    }

    // Function to add to array
    function addPerson (string memory _Name, uint256 _favNumber ) public {
        // Another  method
        // People memory newPerson = People({ favNumber: _favNumber, Name: _Name });
        // people.push(newPerson);
        people.push(People(_favNumber, _Name));
        // Adding mapping to array
        nameToFavNum[_Name]=_favNumber;
    }

    // Creating a map  String  name is mapped to fav number
    mapping(string => uint256) public  nameToFavNum;

}


// 0xd9145CCE52D386f254917e481eB44e9943F39138