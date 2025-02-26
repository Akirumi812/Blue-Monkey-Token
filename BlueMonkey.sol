// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BlueMonkeyToken is ERC20, Ownable {
    uint256 public constant INITIAL_SUPPLY = 100_000 * 10 ** 18; // 100,000 tokens

    constructor() ERC20("Blue Monkey Token", "MKY") Ownable(msg.sender) {
        _mint(msg.sender, INITIAL_SUPPLY); // Mint initial supply to contract deployer
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
