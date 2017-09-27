pragma solidity ^0.4.4;
import 'zeppelin-solidity/contracts/token/StandardToken.sol';

contract VoteToken is StandardToken {
	string public name = 'Democracy Earth VOTE';
	string public symbol = 'VOTE';
	uint public decimals = 4;
	uint public INITIAL_SUPPLY = 20000000;

  function VoteToken() {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
