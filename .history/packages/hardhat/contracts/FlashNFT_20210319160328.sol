pragma solidity >=0.6.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract FlashNFT {

  event SetPurpose(address sender, string purpose);

  // string public purpose = "Best way to mint art";

  constructor() {
    // what should we do on deploy?
    console.log("tell me a story please...");
  }

  // function setPurpose(string memory newPurpose) public {
  //   purpose = newPurpose;
  //   console.log(msg.sender,"set purpose to",purpose);
  //   emit SetPurpose(msg.sender, purpose);
  // }

}
