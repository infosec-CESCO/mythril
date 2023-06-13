// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ICurveFactory {
    function getProtocolFee() external view returns (int128);
    function getProtocolTreasury() external view returns (address);
    function getGlobalFrozenState() external view returns (bool);
    function setGlobalFrozen(bool) external;
    function getFlashableState() external view returns (bool);
}