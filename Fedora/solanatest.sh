#!/bin/sh

solana config set --url https://api.devnet.solana.com
solana-keygen new --outfile ~/.config/solana/devnet.json
solana config set --keypair ~/.config/solana/devnet.json
solana config get

solana airdrop 1
solana balance
