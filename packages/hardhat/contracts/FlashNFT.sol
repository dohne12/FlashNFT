pragma solidity >=0.6.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract FlashNFT is ERC721, Ownable {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() public ERC721("FlashNFT", "FNT") {}

  // function setPurpose(string memory newPurpose) public {
  //   purpose = newPurpose;
  //   console.log(msg.sender,"set purpose to",purpose);
  //   emit SetPurpose(msg.sender, purpose);
  // }

  // function setMediaType(string memory mediaType) public {
  //   mediaType = mediaType;
  //   console.log(msg.sender, "set media type to: ", mediaType);
  //   emit SetMediaType(msg.sender, mediaType);
  // }

  function mintToken(address artist, string memory tokenURI) 
    public
    returns (uint256) {

      // increment the token counter
      _tokenIds.increment();

      uint256 newItemId = _tokenIds.current();
      _mint(artist, newItemId);
      _setTokenURI(newItemId, tokenURI);

      return newItemId;
  }

  // inherited functions
  // tokenURI(tokenId) 

  // function getTokenURI(uint256 tokenId)
  //  public view
  //  returns (string memory) {
  //    string memory tokenURI = tokenURI(tokenId);
  //    return tokenURI;
  // }

}
