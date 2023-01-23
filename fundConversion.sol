// Get funds from users, withdraw funds. Set minimum funding amount
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
// 3:48

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    uint256 minimumUSD = 50 * 1e18;

    function fund() public payable{        
        // To able to send the minimum fund amount in USD
        require(getConversionRate(msg.value)>= minimumUSD, "Insufficient funds");    //   1e18  = 1 * 10 ^ 18

    }

    // function to get ETH price in USD
    function getPrice() public view returns(uint256){
        //  ABI -> comes via aggreagatorv3 interface
        //  address: 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);

        (
            /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed.latestRoundData();
        return uint256(price *1e10);
    }
    function getConversionRate(uint256 ethAmount) public view returns (uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (ethPrice * ethAmount)/1e18;
        return  ethAmountInUSD;

    }

    // function withdraw(){

    // }

}