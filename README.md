# DegenTokenERC-20

The DegenToken is an ERC-20 token smart contract deployed on the Ethereum blockchain. It provides a set of functionalities for creating, managing, and interacting with the DGN token. Below are the key features and functions of the contract.

## Contract Details

- **Token Name:** Degen
- **Token Symbol:** DGN
- **Decimals:** 18 (Standard for most ERC-20 tokens)

## Features and Functions

1. **Mint Tokens**
   - `mintTokens(address beneficiary, uint256 amount) external onlyOwner`
   - The contract owner can mint new DGN tokens and assign them to a specific beneficiary address.

2. **Burn Tokens**
   - `redeemPosition(uint256 position, uint256 price) public payable`
   - Token holders can redeem a specific position by burning a certain amount of DGN tokens (specified by `price`).

3. **Transfer Tokens**
   - `transferTokens(address beneficiary, uint256 amount) public returns (bool success)`
   - Token holders can transfer DGN tokens to another address (`beneficiary`) with a specified amount (`amount`).

4. **Check Token Balance**
   - `checkTokenBalance(address account) external view returns (uint256)`
   - Anyone can check the DGN token balance of a given Ethereum address (`account`).

5. **Get Total Supply**
   - `getTotalSupply() external view returns (uint256)`
   - Provides the current total supply of DGN tokens.

6. **Get Token Name**
   - `getTokenName() external view returns (string memory)`
   - Retrieves the name of the DGN token.

7. **Get Token Symbol**
   - `getTokenSymbol() external view returns (string memory)`
   - Retrieves the symbol of the DGN token.
     

## Important Note

- Always review the smart contract code before interacting with it to ensure its security and correctness.
- Exercise caution when calling functions that modify the contract state, especially when transferring or burning tokens, as actions may not be reversible.

## License

This project is licensed under the MIT License. See the [LICENSE] file for details.
