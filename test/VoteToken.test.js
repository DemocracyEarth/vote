var VoteToken = artifacts.require('VoteToken');

contract('VoteToken', function (accounts) {
  let token;

  beforeEach(async function () {
    token = await VoteToken.new(accounts[0]);
  });

  it('should return the correct totalSupply after construction', async function () {
    let totalSupply = await token.totalSupply();

    assert.equal(totalSupply, 200000000000);
  });
  
});