// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "solmate/tokens/ERC20.sol";
import "./interfaces/IERC20.sol";

contract Token is ERC20("token", "TOK", 18) {
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}