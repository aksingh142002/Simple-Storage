# SimpleStorage Contract

## Overview

This project is a basic Solidity smart contract named `SimpleStorage`. It allows users to store a single number on the blockchain, retrieve it, and reset it to zero. The contract includes basic access control, ensuring that only the owner (the account that deployed the contract) can modify the stored number.

## Features

- **Store a Number:** Allows the owner to store a single `uint256` value.
- **Retrieve the Number:** Any user can retrieve the stored value.
- **Reset the Number:** Allows the owner to reset the stored number to zero.
- **Access Control:** Only the contract owner can modify or reset the stored number.
- **Custom Error Handling:** The contract uses a custom error `NotOwner` for unauthorized access, which is more gas-efficient compared to traditional `require` statements.
- **Immutable Owner:** The contract owner is immutable, meaning it is set at deployment and cannot be changed later.

## Contract Details

- **Solidity Version:** `^0.8.20`
- **License:** MIT

## Usage

### 1. Deployment

The contract can be deployed using Remix or any other Ethereum development environment. Once deployed, the account that deploys the contract becomes the owner.

### 2. Functions

#### `set(uint256 _num)`

- **Description:** Stores the given number in the contract.
- **Access:** Only the owner can call this function.
- **Events Emitted:** `Log(uint256 newNum)` when the number is successfully stored.

#### `reset()`

- **Description:** Resets the stored number to zero.
- **Access:** Only the owner can call this function.
- **Events Emitted:** `Log(uint256 newNum)` when the number is successfully reset.

#### `get()`

- **Description:** Retrieves the currently stored number.
- **Access:** Public (Anyone can call this function).
- **Returns:** The stored `uint256` number.

### 3. Events

#### `Log(uint256 newNum)`

- **Description:** Emitted whenever the stored number is updated.

### 4. Errors

#### `NotOwner`

- **Description:** Thrown when a non-owner account attempts to call `set()` or `reset()` functions.

## Example

1. **Deploy the Contract:** Use Remix or another tool to deploy the contract. The deploying account will be the owner.
2. **Store a Number:** The owner can call `set(42)` to store the number `42`.
3. **Retrieve the Number:** Any user can call `get()` to retrieve the stored number, which will return `42`.
4. **Reset the Number:** The owner can call `reset()` to reset the stored number to `0`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
