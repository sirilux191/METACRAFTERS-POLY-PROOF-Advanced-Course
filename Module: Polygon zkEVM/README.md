# Polygon zkEVM
zkSNARK Circuit Implementation and Verification

## Description
This project involves designing a zkSNARK circuit using the circom programming language. The goal is to compile the circuit, generate proofs, deploy a solidity verifier on Sepolia or the Mumbai Testnet, and verify the correctness of the proofs.

# Getting Started

- Write a correct circuit.circom implementation
- Compile the circuit to generate circuit intermediaries
- Generate a proof using inputs A=0 B=1
- Deploy a solidity verifier to Sepolia or Mumbai Testnet
- Call the verifyProof() method on the verifier contract and assert output is true

1. Clone the repository
2. Install Dependencies
```shell
npm install
```
3. Compile Circuit
```shell
npx hardhat circom
```
4. Deploy and Verify on Polygon Mumbai Testnet
```shell
npx hardhat run scripts/deploy.ts --network mumbai
```
5. Make Sure to provide your private key using enviroment variable.

## Authors

This project was created by [MetaCrafter Sirilux](https://twitter.com/AadityaChandan1).

## License

This project is licensed under the [MIT License](../LICENSE).
