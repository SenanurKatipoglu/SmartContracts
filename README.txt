Created by KATIPOGLU 

🚀 Building on Blockchain: BlueToken - ERC-20 Token
I recently developed my first ERC-20 compliant token, BlueToken, as a hands-on project to deepen my understanding of Solidity and blockchain development.
📊 Project Highlights:
Step-by-step guide for creating and testing an ERC-20 token.
Deployed and tested using Remix IDE.
A beginner-friendly approach for exploring blockchain solutions.
🔗 Read the detailed guides here (eng and turkish version):
🇬🇧 https://lnkd.in/dwBtNBxq
🇬🇧 https://lnkd.in/dDs3kPyX
--
🇹🇷 https://lnkd.in/dZjP2PtM
🇹🇷 Medium doesn't allow more than 3 posts to be shared in a single day, so this one will be live tomorrow.

REMIX DEFAULT WORKSPACE

Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.
