// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SiriluxTKN is ERC721A, Ownable {
    uint256 MAX_MINTS = 5;
    uint256 MAX_SUPPLY = 5;
   
    constructor() ERC721A("Sirilux", "SIRI") {}

    function mint(uint256 quantity) external onlyOwner {
        // _safeMint's second argument now takes in a quantity, not a tokenId.
        require(quantity + _numberMinted(msg.sender) <= MAX_MINTS, "Exceeded the limit");
        require(totalSupply() + quantity <= MAX_SUPPLY, "Not enough tokens left");
        _safeMint(msg.sender, quantity);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://Qmc3opGBF7Bp6ze7eghsNxskS62vPUTkJinUdkmRGCoWoY/";
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        string memory baseURI = _baseURI();
        return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, _toString(tokenId),".json")) : '';
    }

    function promptDescription(uint8 _tokenId) public pure returns (string memory){
        if(_tokenId == 0 ) {
            return "a bowl of soup that is also a portal to another dimension, digital art";
        } else if (_tokenId == 1){
            return "a fantasy underwater kingdom with mermaids and bioluminescent creatures";
        } else if (_tokenId == 2){
            return "a surreal desert oasis with floating cacti and a purple sky";
        } else if (_tokenId == 3){
            return "an astronaut playing basketball with cats in space, digital art";
        } else if (_tokenId == 4){
            return "synthwave sports car";
        }else{
            return "Not a Valid Token ID";
        }
    }
}