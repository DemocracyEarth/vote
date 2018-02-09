import assertRevert from './helpers/assertRevert';

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

  it('should return correct balances after transfer', async function () {
    await token.transfer(accounts[1], 1000);
    let balance0 = await token.balanceOf(accounts[0]);
    assert.equal(balance0, 199999999000);

    let balance1 = await token.balanceOf(accounts[1]);
    assert.equal(balance1, 1000);
  });

  it('should throw an error when trying to transfer more than balance', async function () {
    // let token = await StandardTokenMock.new(accounts[0], 100);
    await assertRevert(token.transfer(accounts[1], 200000000001));
  });

  it('should return correct balances after transfering from another account', async function () {
    // let token = await StandardTokenMock.new(accounts[0], 100);
    await token.approve(accounts[1], 1000);
    await token.transferFrom(accounts[0], accounts[2], 1000, { from: accounts[1] });

    let balance0 = await token.balanceOf(accounts[0]);
    assert.equal(balance0, 199999999000);

    let balance1 = await token.balanceOf(accounts[1]);
    assert.equal(balance1, 0);

    let balance2 = await token.balanceOf(accounts[2]);
    assert.equal(balance2, 1000);
  });

  it('should throw an error when trying to transfer more than allowed', async function () {
    await token.approve(accounts[1], 999);
    await assertRevert(token.transferFrom(accounts[0], accounts[2], 1000, { from: accounts[1] }));
  });

  it('should throw an error when trying to transferFrom more than _from has', async function () {
    let balance0 = await token.balanceOf(accounts[0]);
    await token.approve(accounts[1], 99);
    await assertRevert(token.transferFrom(accounts[0], accounts[2], balance0 + 1, { from: accounts[1] }));
  });
});
