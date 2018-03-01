const VoteToken = artifacts.require("./VoteToken.sol")

module.exports = function(deployer, network, accounts) {
  deployer.deploy(VoteToken)
};
