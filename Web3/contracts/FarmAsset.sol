// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FarmAsset is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;

    constructor() ERC721("FarmAsset", "FARMASSET") Ownable(msg.sender) {}

    function mint(address to, string memory tokenURI) external onlyOwner returns (uint256) {
        _tokenIds++;
        uint256 newItemId = _tokenIds;
        _safeMint(to, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}