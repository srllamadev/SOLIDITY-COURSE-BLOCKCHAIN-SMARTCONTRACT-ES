# Solidity Course - Smart Contracts Development

A comprehensive Solidity course covering fundamental to intermediate concepts of blockchain smart contract development on Ethereum.

## Table of Contents

1. [Introduction](#introduction)
2. [Course Structure](#course-structure)
3. [Prerequisites](#prerequisites)
4. [Getting Started](#getting-started)
5. [Module Overview](#module-overview)
6. [Resources](#resources)

## 🦙 Introduction

This repository contains practical examples and exercises for learning Solidity, the programming language for Ethereum smart contracts. Each module progressively builds upon previous concepts, providing hands-on examples that can be deployed and tested.

## 🦙 Course Structure

### 1. Introduction (`1_Introducción/`)
Basic concepts and first steps in Solidity development.

- **Hello World** (`0_HolaMundo.sol`, `00_HolaMundo.sol`)
  - First smart contract
  - Public variables
  - Basic contract structure
  
- **Data Types** (`1_TiposDeDatos.sol`)
  - Boolean: `bool`
  - Unsigned integers: `uint`, `uint8`, `uint16`, `uint256`
  - Signed integers: `int`
  - Address: `address`
  - Strings: `string`
  - Gas optimization considerations

- **Variables** (`2_1_VarEstado.sol`, `2_2_VarLocal.sol`, `2_3_VarGlobal.sol`)
  - State variables
  - Local variables
  - Global variables (`msg.sender`, `msg.value`, `block.timestamp`, etc.)

- **Calculator Examples** (`3_1_Calculadora.sol`, `3_2_Calculadora_v2.sol`, `3_3_Calculadora_v2_comp.sol`)
  - Basic arithmetic operations
  - Function implementation
  - Progressive improvements

### 2. Variable Types (`2_TipoVariables/`)
Deep dive into variable scopes and behaviors.

- **Local Variables** (`1_VarLocal.sol`)
  - Function scope
  - Memory allocation
  - Temporary storage

- **State Variables** (`2_VarEstado.sol`)
  - Contract-level persistence
  - Storage location
  - Gas costs

- **Global Variables** (`3_VarGlobal.sol`)
  - `msg.sender`: Transaction sender
  - `msg.value`: ETH sent with transaction
  - `block.number`: Current block number
  - `block.timestamp`: Block timestamp

- **Practical Example** (`4_VarEjemplo.sol`)

### 3. Visibility Types (`3_TipoVisibilidad/`)
Understanding function and variable visibility modifiers.

- **Public** (`TipoVisibilidadPublic.sol`)
  - Accessible from anywhere
  - Automatically generates getter functions
  - External and internal calls allowed

- **Private** (`TipoVisibilidadPrivate.sol`)
  - Only accessible within the same contract
  - Not visible to derived contracts
  - Maximum encapsulation

- **Internal** (`TipoVisibilidadInternal.sol`)
  - Accessible within the contract and derived contracts
  - Similar to `protected` in OOP
  - Default for state variables

- **External** (`TipoVisibilidadExternal.sol`)
  - Only callable from outside the contract
  - Gas-efficient for external calls
  - Cannot be called internally (except with `this`)

- **Inheritance Examples** (`PadreVisibilidad.sol`, `HijoVisibilidad.sol`)
  - Parent-child contract relationships
  - Visibility in inheritance hierarchies

### 4. Function Modifiers (`4_Modificadores/`)
Special keywords that modify function behavior.

- **View** (`ModiFuncView.sol`)
  - Reads state but doesn't modify it
  - No gas cost when called externally
  - Returns data without transactions

- **Pure** (`ModiFuncPure.sol`)
  - Doesn't read or modify state
  - Performs calculations only
  - Gas-free external calls

- **Payable** (`ModiFuncPayable.sol`)
  - Allows function to receive ETH
  - Required for value transfers
  - Access to `msg.value`

- **Practical Example** (`ModiEjemplo.sol`)

### 5. Examples (`5_Ejemplos/`)
Real-world smart contract implementations.

- **Simple Bank** (`BancoSimple.sol`)
  - Deposit functionality
  - Withdrawal system
  - Balance tracking with `mapping`
  - Event logging (`Deposito`, `Reg`)
  - Access control with `require`
  - ETH transfers with `payable` and `transfer`

### 6. Getters and Setters (`6_Getters_And_Setters/`)
Data access patterns in Solidity.

- **Getters** (`getters.sol`)
  - Reading state variables
  - Automatic public getters
  - Custom getter functions

- **Setters** (`setters.sol`)
  - Modifying state variables
  - Input validation
  - Access control

- **Combined Example** (`get_set.sol`)

## 🦙 Prerequisites

- Basic programming knowledge
- Understanding of blockchain concepts
- [Node.js](https://nodejs.org/) installed
- [Remix IDE](https://remix.ethereum.org/) (web-based) or
- [VS Code](https://code.visualstudio.com/) with Solidity extension

## 🚀 Getting Started

### Option 1: Using Remix IDE (Recommended for Beginners)

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create a new file
3. Copy any `.sol` file from this repository
4. Compile with Solidity compiler (0.7.0 - 0.9.0)
5. Deploy to JavaScript VM for testing

### Option 2: Local Development

```bash
# Install Hardhat
npm install --save-dev hardhat

# Create a Hardhat project
npx hardhat

# Compile contracts
npx hardhat compile

# Run tests
npx hardhat test
```

### Option 3: Using Truffle

```bash
# Install Truffle globally
npm install -g truffle

# Initialize project
truffle init

# Compile
truffle compile

# Deploy
truffle migrate
```

## 🦙 Module Overview

### Key Concepts Covered

#### Data Types
- **Value Types**: `bool`, `uint`, `int`, `address`, `bytes`
- **Reference Types**: `string`, `arrays`, `mapping`, `struct`
- **Type Optimization**: Using appropriate sizes (`uint8`, `uint16`, etc.) for gas efficiency

#### Variables
- **State Variables**: Stored on blockchain, persistent
- **Local Variables**: Exist only during function execution
- **Global Variables**: Built-in properties (`msg`, `block`, `tx`)

#### Visibility Modifiers
- `public`: Accessible everywhere
- `private`: Only within the contract
- `internal`: Within contract and children
- `external`: Only from outside

#### Function Modifiers
- `view`: Read-only functions
- `pure`: No state interaction
- `payable`: Can receive ETH

#### Advanced Concepts
- **Events**: Logging important actions
- **Mappings**: Key-value storage
- **Require**: Input validation
- **ETH Transfers**: `payable()`, `transfer()`

## 🦙 Best Practices

1. **Always specify SPDX license identifier**
   ```solidity
   // SPDX-License-Identifier: MIT
   ```

2. **Use appropriate Solidity version**
   ```solidity
   pragma solidity ^0.8.0;
   ```

3. **Validate inputs with `require`**
   ```solidity
   require(msg.value > 0, "Must send ETH");
   ```

4. **Emit events for important actions**
   ```solidity
   event Deposit(address indexed user, uint256 amount);
   emit Deposit(msg.sender, msg.value);
   ```

5. **Optimize gas usage**
   - Use appropriate data types
   - Pack variables efficiently
   - Minimize storage operations

6. **Security considerations**
   - Check for reentrancy vulnerabilities
   - Use `require` for validation
   - Be cautious with external calls

## 🦙 Resources

### Official Documentation
- [Solidity Docs](https://docs.soliditylang.org/)
- [Ethereum.org](https://ethereum.org/en/developers/)
- [OpenZeppelin](https://docs.openzeppelin.com/)

### Development Tools
- [Remix IDE](https://remix.ethereum.org/) - Web-based IDE
- [Hardhat](https://hardhat.org/) - Development environment
- [Truffle](https://trufflesuite.com/) - Development framework
- [Ganache](https://trufflesuite.com/ganache/) - Local blockchain

### Testing Networks
- [Sepolia Testnet](https://sepoliafaucet.com/) - Ethereum testnet
- [Mumbai Testnet](https://mumbaifaucet.com/) - Polygon testnet

### Additional Learning
- [CryptoZombies](https://cryptozombies.io/) - Interactive tutorial
- [Ethernaut](https://ethernaut.openzeppelin.com/) - Security challenges
- [Solidity by Example](https://solidity-by-example.org/) - Code examples

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Add new examples
- Improve documentation
- Fix bugs
- Suggest enhancements

## 📄 License

This project is licensed under GPL-3.0 and MIT (depending on the file).

## ⚠️ Disclaimer

This repository is for educational purposes only. Always audit smart contracts before deploying to mainnet. Never deploy unaudited code with real funds.

---

**Happy Learning! 🚀**

*Tu Puedes, Amigo!* 💪
