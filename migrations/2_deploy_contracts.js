var VoteToken = artifacts.require("./VoteToken.sol");

module.exports = function(deployer) {
  deployer.deploy(VoteToken);
};
