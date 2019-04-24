//  From : https://gist.github.com/aunyks/22be27444d6a9a91d2305c2ea2e2f7e8

pragma solidity ^0.5.0;

contract Counter {
    int private count = 0;
    function incrementCounter() public {
        count += 1;
    }
    function decrementCounter() public {
        count -= 1;
    }
    function getCount() public view returns (int) {
        return count;
    }
}