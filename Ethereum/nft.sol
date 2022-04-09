// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/interfaces/IERC2981.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LilfatfrankDAO is ERC721URIStorage, Ownable {
    
    uint256 public tokenCounter;
    
    constructor()  ERC721("lilfatfrank", "LFF") {
        tokenCounter = 0;
    }

    function createCollectible(string memory tokenURI,address to) public onlyOwner returns (uint256) {
        uint256 newItemid = tokenCounter;
        _safeMint(msg.sender, newItemid);
        _setTokenURI(newItemid,tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemid;
    }

}