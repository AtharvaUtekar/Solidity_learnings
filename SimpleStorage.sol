// You have to  always mention the version of solidity used because  sol is evloving language
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{
    uint256  public favNumber;

    function store (  uint _favNum ) public{
     favNumber=_favNum;
    }

    // Created a struct
    People  public person  = People ({favNumber:12345, Name:"Atharva"});

    struct  People {
        uint256  favNumber;
        string Name;

    }

    // Creating an array
    People[] public 

    // Getter function created by user
    function retrieve() public view returns  (uint){
        return favNumber;
    }
}


// 0xd9145CCE52D386f254917e481eB44e9943F39138