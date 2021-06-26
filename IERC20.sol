// SPDX-License-Identifier: MIT

//@dev solidity compiler version 
pragma solidity ^0.8.0;

/*@dev Interface in a contracts consists of functions without any implementation.
*        Mainly used as a inheritable contract. You won't deploy this contract.
*/
interface IERC20 {

    //@dev returns the total supply of the token.
    function totalSupply() external view returns (uint256);

    //@dev returns the balance(amount of tokens) owned by the account. 
    function balanceOf(address account) external view returns (uint256);

    //@dev 
    function allowance(address owner, address spender) external view returns (uint256);
    
    //@dev  
    function approve(address spender, uint256 amount) external returns (bool);

    //@dev 
    function transfer(address recipient, uint256 amount) external returns (bool);

    //@dev
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    //@dev
    event Transfer(address indexed from, address indexed to, uint256 value);
    
    //@dev
    event Approval(address indexed owner, address indexed spender, uint256 value);
}