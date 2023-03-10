// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

interface IERC721Receiver {

    function onERC721Received(address, address, uint256, bytes calldata) external returns (bytes4);
}

contract ERC721Received is IERC721Receiver{

    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) 
        external
        pure
        returns (bytes4)
    {
        return this.onERC721Received.selector;
    }
}