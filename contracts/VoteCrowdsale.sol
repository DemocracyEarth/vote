pragma solidity ^0.4.4;
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';
import './VoteToken.sol';

contract VoteCrowdsale is Crowdsale {

  function VoteCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet) 
    Crowdsale(_startTime, _endTime, _rate, _wallet) {          
  }

  // creates the token to be sold
  function createTokenContract() internal returns (MintableToken) {
    return new VoteToken();
  }

}
