// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract FarmToEarn is Ownable, ReentrancyGuard {
    IERC20 private token;
    IERC721 private nft;

    constructor(IERC20 _token, IERC721 _nft) Ownable(msg.sender) {
        token = _token;
        nft = _nft;
    }

    function echo() public pure returns (string memory) {
        return "Welcome to FarmToEarn!";
    }
}
