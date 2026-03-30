Showcase using Aztec with Hardhat. This repo is meant to be used specifically with Aztec version `4.2.0-aztecnr-rc.2`, as it grabs the Aztec l1-contracts from the corresponding tagged release (see [package.json](./package.json)).

**Version compatibility:** The `@aztec/l1-contracts` version in `package.json` must match the version of the Aztec local network you are running. If you update your local network version, update the l1-contracts tag accordingly.

All you need is the postinstall script and dependencies in package.json.

Then you should be able to `npm install && npx hardhat compile`.
