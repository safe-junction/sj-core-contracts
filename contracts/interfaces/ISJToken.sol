pragma solidity ^0.8.19;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title ISJToken
 * @author Saje Function
 *
 * @notice
 */
interface ISJToken is IERC20 {
    function xTransfer(uint256 destinationChainId, address account, uint256 amount, uint256 fastLaneFeeAmount) external;

    function mint(address account, uint256 amount) external;

    function releaseCollateral(address account, uint256 amount) external;
}
