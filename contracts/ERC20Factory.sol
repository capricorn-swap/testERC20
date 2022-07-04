// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./testERC20.sol";

struct TokenInfo{
    address addr;
    string name;
    string symbol;
    uint8 decimals;
}
contract ERC20Factory{

    TokenInfo [] public tokens;

    constructor() {
    }

    function tokenCount() public view returns(uint count){
       count = tokens.length; 
    }

    function createERC20(string memory name_, string memory symbol_, uint8 decimals_) public {
        testERC20 newToken = new testERC20(name_,symbol_,decimals_);
        tokens.push(TokenInfo({
            addr:address(newToken),
            name:name_,
            symbol:symbol_,
            decimals:decimals_
        }));
        newToken.mintTo(msg.sender,10**26);
    }

    function createERC20Decimals18(string memory name_, string memory symbol_) public {
        createERC20(name_,symbol_,18);
    }

    function mintByTokenId(uint id, uint _amount) public{
        TokenInfo storage tokenInfo = tokens[id];
        mintByTokenAddress(tokenInfo.addr, _amount);
    }

    function mintByTokenAddress(address token, uint _amount) public{
        testERC20(token).mintTo(msg.sender,_amount);
    }


}
