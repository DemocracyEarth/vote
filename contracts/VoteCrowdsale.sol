pragma solidity ^0.4.18;
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';
import './VoteToken.sol';

contract VoteCrowdsale is Crowdsale {
  function VoteCrowdsale(uint256 _rate, address _wallet, VoteToken _token)
    Crowdsale(_rate, _wallet, _token) {
  }
}
