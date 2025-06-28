// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "forge-std/Test.sol";

contract ContractBTest is Test {
    uint256 testNumber;

    function setUp() public {
        testNumber = 42;
    }

    // External function for proper call depth
    function triggerUnderflow() external {
        testNumber -= 43; // This causes a revert (underflow) on uint256
    }

    function test_CannotSubtract43() public {
        console2.log("currentNumber= %d", testNumber);
        vm.expectRevert(stdError.arithmeticError);
        this.triggerUnderflow(); // ⬅️ VERY IMPORTANT: call via `this`
    }
}
