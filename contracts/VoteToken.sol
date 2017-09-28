pragma solidity ^0.4.4;
import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract VoteToken is MintableToken {
	string public name = 'Democracy Earth VOTE';
	string public symbol = 'VOTE';
	uint public decimals = 4;
	uint public INITIAL_SUPPLY = 20000000;

  function VoteToken() {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
