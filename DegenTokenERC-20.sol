// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    string[] public positions;

    constructor() ERC20("Degen", "DGN") {
        positions = ["Position 1", "Position 2", "Position 3"];
    }

    function redeemPosition(uint256 position, uint256 price) public payable {
        require(bytes(positions[position]).length > 0, "Position does not exist");
        require(balanceOf(msg.sender) > 0, "Insufficient balance");
        _burn(_msgSender(), price);
    }

    function transferTokens(address beneficiary, uint256 amount) public returns (bool success) {
        require(amount > 0, "Amount should be greater than zero.");
        _transfer(_msgSender(), beneficiary, amount);
        return true;
    }

    function mintTokens(address beneficiary, uint256 amount) external onlyOwner {
        _mint(beneficiary, amount);
    }

    function checkTokenBalance(address account) external view returns (uint256) {
        return balanceOf(account);
    }

    function getTotalSupply() external view returns (uint256) {
        return totalSupply();
    }

    function getTokenName() external view returns (string memory) {
        return name();
    }
   
    function getTokenSymbol() external view returns (string memory) {
        return symbol();
    }
}
