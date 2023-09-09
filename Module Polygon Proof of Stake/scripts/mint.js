// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");
const tokenContractJSON = require("../artifacts/contracts/SiriluxTKN.sol/SiriluxTKN.json");
require("dotenv").config();

const tokenAddress = "0xECC66c7B38CFA78231923F9EC56c32d61Be264e3"; // place your erc20 contract address here
const tokenABI = tokenContractJSON.abi;
const walletAddress = "0x0B24EABB31b898aDf95277E33930C6b7894E914A"; // place your public address for your wallet here

async function main() {
  const token = await hre.ethers.getContractAt(tokenABI, tokenAddress);

  const tx = await token.mint(5);
  await tx.wait();

  console.log(
    "You now have: " + (await token.balanceOf(walletAddress)) + " tokens"
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
