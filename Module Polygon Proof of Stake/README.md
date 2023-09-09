# Building with Polygon Bridge

This guide outlines the steps to deploy an NFT collection on the Ethereum blockchain, map it to the Polygon network, and transfer assets to Polygon using the Polygon Bridge. We'll be using Hardhat for smart contract development and deployment.

## Description

Deploy an ERC721A NFT collection on the Ethereum blockchain with 5 unique items generated using image tools like DALLE 2 or Midjourney. Store these images on IPFS via Pinata for decentralized access. Use Hardhat to deploy the contract on the Goerli Ethereum Testnet, featuring a promptDescription function for image descriptions. Optionally map the collection to Polygon for better scalability. Finally, create Hardhat scripts to batch mint the NFTs, transfer them to Polygon Mumbai via the FxPortal Bridge, and test their balance on the Polygon network.

## Getting Started

- Generate a 5-item collection using DALLE 2 or Midjourney
- Store items on IPFS using pinata.cloud
- Deploy an ERC721 or ERC1155 to the Goerli Ethereum Testnet
- You should have a promptDescription function on the contract that returns the prompt you used to generate the images
- Map Your NFT Collection using Polygon network token mapper. Note: this isn’t necessary but helpful for visualization.
- Write a hardhat script to batch mint all NFTs. Hint: ERC721A is optimal here.
- Write a hardhat script to batch transfer all NFTs from Ethereum to Polygon Mumbai using the FxPortal Bridge

1. To install dependencies
```shell
npm i 
```
2. To install hardhat
```shell
npm install hardhat --save-dev
```
3. To install ERC721A
```shell
npm install --save-dev erc721a
```
4. Run Deploy Script
```shell
npx hardhat run scripts/deploy.js --network goerli
```
5. Run Mint Script
```shell
npx hardhat run scripts/mint.js --network goerli
```
6. Run Approve & Deposit Script
   
```shell
npx hardhat run scripts/approveDeposit.js --network goerli
```
7. Run Get Balance Script
```shell
npx hardhat run scripts/getBalance.js --network mumbai
```

## Authors

This project was created by [MetaCrafter Sirilux](https://twitter.com/AadityaChandan1).

## License

This project is licensed under the [MIT License](../LICENSE).
