pragma solidity >=0.6.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract FlashNFT {

  event SetPurpose(address sender, string purpose);
  event SetMediaType(address sender, string mediaType);

  string public purpose = "cool memes";
  string public mediaType;

  constructor() {
    // what should we do on deploy?
    console.log("tell me a story please...");
  }

  function setPurpose(string memory newPurpose) public {
    purpose = newPurpose;
    console.log(msg.sender,"set purpose to",purpose);
    emit SetPurpose(msg.sender, purpose);
  }

  function setMediaType(string memory mediaType) public {
    this.mediaType = mediaType;
    console.log(msg.sender, "set media type to: ", mediaType);
    emit SetMediaType(msg.sender, mediaType);
  }

}