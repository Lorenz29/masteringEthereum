// SPDX-License-Identifier: CC-BY-SA-4.0

// Version of Solidity compiler this program was written for
//https://github.com/ethereumbook/ethereumbook/blob/develop/07smart-contracts-solidity.asciidoc#data-types

pragma solidity ^0.6.0;

// Our first contract is a faucet!
contract Faucet {
    // Accept any incoming amount
    receive() external payable {}

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 0.1 ether);

        // Send the amount to the address that requested it
        msg.sender.transfer(withdraw_amount);
    }
}