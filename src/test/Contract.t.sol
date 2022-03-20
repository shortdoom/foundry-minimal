// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "ds-test/test.sol";
import "./utils/Hevm.sol";
import "./mock/MockERC20.sol";
import "../Contract.sol";

contract ContractTest is DSTest {

    address owner = address(0x3b1b);

    // HEVM_ADDRESS is default value
    Hevm internal constant hevm = Hevm(HEVM_ADDRESS);
    
    MockERC20 mockToken;
    Token _contract;

    // constructor runs only once
    constructor() {
        mockToken = new MockERC20();
    }

    // setUp == beforeEach
    function setUp() public {
        hevm.startPrank(owner);
        _contract = new Token();
    }
    function testExample() public {
        assertTrue(true);
    }
}
