pragma solidity ^0.8.19;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

error NotGovernance();

contract Governance is Ownable {
    address[] private _sourceAdapters;
    address[] private _destinationAdapters;

    function addSourceAdapter(address adapter) external onlyOwner {
        _sourceAdapters.push(adapter);
    }

    function addDestinationAdapter(address adapter) external onlyOwner {
        _destinationAdapters.push(adapter);
    }

    function getDestinationAdapters() external view returns (address[] memory) {
        return _destinationAdapters;
    }

    function getSourceAdapters() external view returns (address[] memory) {
        return _sourceAdapters;
    }
}