// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "forge-std/Test.sol";

contract ContractBTest is Test {
    uint256 testNumber;

    function setUp() public {
        testNumber = 42;
    }

    function testFail_Subtract43() public {
        testNumber -= 43;  // Not working as this has been removed from  solidity
    }
}
