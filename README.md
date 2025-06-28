# Hello Foundry: Ethereum Smart Contract Suite

[![Sepolia Deployment](https://img.shields.io/badge/Deployed%20on-Sepolia-blue)](https://sepolia.etherscan.io/address/0x27f98b80df3d44662f5ebcba6817dc9610a07bfb)

## Overview

Hello Foundry is a robust, modular Ethereum smart contract project leveraging the [Foundry](https://book.getfoundry.sh/) development toolkit. This repository demonstrates best practices in Solidity development, testing, and deployment, featuring:

- **MyToken (AdityaToken, ADT):** An ERC20-compliant token contract built with [Solmate](https://github.com/transmissions11/solmate) for gas efficiency and security. [View deployed contract on Sepolia](https://sepolia.etherscan.io/address/0x27f98b80df3d44662f5ebcba6817dc9610a07bfb)
- **Counter:** A simple, auditable contract for demonstration and testing purposes.
- **Comprehensive Testing:** Includes fuzzing, revert checks, and edge case validation using Forge's advanced test suite.

## Key Contracts

### MyToken (AdityaToken, ADT)
- **Type:** ERC20 Token
- **Features:**
  - Customizable name, symbol, decimals, and initial supply
  - Built on Solmate's gas-optimized ERC20 implementation
  - Constructor arguments (example):
    - Name: `AdityaToken`
    - Symbol: `ADT`
    - Decimals: `18`
    - Initial Supply: `1,000,000 ADT`
- **Deployment:** [Sepolia Testnet](https://sepolia.etherscan.io/address/0x27f98b80df3d44662f5ebcba6817dc9610a07bfb)

### Counter
- **Type:** Utility Contract
- **Features:**
  - Simple increment and set functionality
  - Used for demonstrating test and deployment flows

## Getting Started

### Prerequisites
- [Foundry](https://book.getfoundry.sh/getting-started/installation) (Forge, Cast, Anvil)
- Node.js (for some scripts)

### Build
```sh
forge build
```

### Test
```sh
forge test
```

### Format
```sh
forge fmt
```

### Gas Snapshots
```sh
forge snapshot
```

### Local Node
```sh
anvil
```

## Deployment

### Deploy MyToken to Sepolia
Example using Forge scripts:
```sh
forge script script/MyToken.sol:MyTokenScript --rpc-url <SEPOLIA_RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```

Or deploy Counter:
```sh
forge script script/Counter.s.sol:CounterScript --rpc-url <SEPOLIA_RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```

### Constructor Arguments for MyToken
```
AdityaToken
ADT
18
1000000000000000000000000
```

## Project Structure
- `src/` — Core smart contracts
- `script/` — Deployment and scripting logic
- `test/` — Automated tests
- `lib/` — External dependencies (Solmate, Forge Std)

## Contributing
Contributions, issues, and feature requests are welcome! Please open an issue or submit a pull request.

## License
This project is licensed under the MIT or Apache-2.0 license, as per the dependencies used.
