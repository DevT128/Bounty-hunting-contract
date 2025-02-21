pragma solidity ^0.8.0;

contract BountyBoard {
    struct Bounty {
        string task;
        uint256 reward;
        bool completed;
    }

    Bounty[] public bounties;

    function addBounty() public {
        bounties.push(Bounty("Complete task X", 100 ether, false));
        bounties.push(Bounty("Complete task Y", 50 ether, false));
        bounties.push(Bounty("Complete task Z", 25 ether, false));
    }

    function completeBounty(uint256 _index) public {
        require(_index < bounties.length, "Invalid index");
        require(!bounties[_index].completed, "Already completed");
        bounties[_index].completed = true;
    }
}
