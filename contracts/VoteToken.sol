pragma solidity ^0.4.4;
import 'zeppelin-solidity/contracts/token/MintableToken.sol';

/**
 * @title Democracy Earth Token
 * @dev ERC20 VOTE Token
 *
 * Vote tokens are divisible by 4 decimal units
 * referred to as 'Revolutions'
 *
 * Votes are displayed using 4 decimal places of precision
 *
 * 1 vote is equivalent to 10,000 revolutions
 *
 * 20 Million vote (total supply) is equivalent to
 * 200 Billion revolutions
 */
contract VoteToken is MintableToken {
	string public name = 'Democracy Earth VOTE';
	string public symbol = 'VOTE';
	uint public decimals = 4;
	uint public INITIAL_SUPPLY = 20000000 * 10**uint256(decimals); // 20 Million votes specfied in revolutions

  function VoteToken() {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
