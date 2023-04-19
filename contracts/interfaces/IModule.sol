// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;


interface IModule {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function supportsStaticCall(bytes4 methodId) external view returns (bool);
    function supportsDelegateCall(bytes4 methodId) external view returns (bool);
    function supportsHook(bytes4 hookId) external view returns (bool);
    function delegateCallBeforeExecution(address target, uint256 value, bytes memory data) external;
    function delegateCallAfterExecution(address target, uint256 value, bytes memory data) external;
    function staticCallBeforeExecution(address target, uint256 value, bytes memory data) external view;
    function staticCallAfterExecution(address target, uint256 value, bytes memory data) external view;
}