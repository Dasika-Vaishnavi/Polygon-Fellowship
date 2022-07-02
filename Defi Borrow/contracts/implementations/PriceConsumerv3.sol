pragma solidity ^0.8.0;

import "../interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {

    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Kovan
     * Aggregator: ETH/USD
     * Address: 0x20f8d224640d50ecC98b69b81BF655599aBBB3b3
     */
    constructor() {
        priceFeed = AggregatorV3Interface(0x20f8d224640d50ecC98b69b81BF655599aBBB3b3);
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
}