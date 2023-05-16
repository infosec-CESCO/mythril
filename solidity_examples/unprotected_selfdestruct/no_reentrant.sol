pragma solidity ^0.8.0;

contract MyContract {
    mapping (address => uint256) private userBalances;
    bool locked;

    modifier no_Reentrant() {
        require(!locked, "Function is locked");
        locked = true;
        _;
        locked = false;
    }

    function myFunction() public no_Reentrant{
        // Send 1 ether to the contract owner
        uint256 balance = address(msg.sender).balance;
        (bool success, ) = msg.sender.call{value: balance}("");
        require(success, "Failed to send Ether");
    }
}
