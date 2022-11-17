// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

interface IERC20 {

    // @dev emitted when a successful transfer is made from 'from' to 'to'
    event Transfer(address indexed from, address indexed to, uint256 amount);

    // @dev emitted when a successful approval is made by owner for a spender
    // allowance is the amount made available to spender from owner's address
    event Approval(address indexed owner, address indexed spender, uint256 allowance);

    // @dev returns total supply of token in existence
    function totalSupply() external view returns (uint256);

    // @dev returns amount of token owned by `account`
    function balanceOf(address account) external view returns (uint256);

    // @dev transfers `amount` tokens from caller's address to `to`
    // returns bool to indicate if operation was a success
    // emits {Transfer} event, even for a 0 amount transfer
    function transfer(address to, uint256 amount) external returns (bool);

    // @dev returns amount of token the spender is still authorised to spend 
    // from the owner's account. It is 0 by default.
    // Value changes when {approved} or {transferFrom} are called
    function allowance(address owner, address spender) external view returns (uint256);

    // @dev authorizes the `spender` to transfer upto `amount` tokens from the
    // caller's wallet. Emits an {Approval} event. Returns true on successful execution.
    function approve(address spender, uint256 amount) external returns (bool);

    // @dev moves `amount` tokens from `from` to `to` as part of the allowance mechanism
    // `amount` is then deducted from the `allowance` of the caller. Returns bool to indicate
    // if call was a success. Emits a {Transfer} event.
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

}

