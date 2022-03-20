// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "solmate/tokens/ERC20.sol";

contract MockERC20 is ERC20("MockToken", "MOCK", 18) {
    // Expose external mint function 
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}