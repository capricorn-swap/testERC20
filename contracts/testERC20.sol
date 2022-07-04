// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// CornToken with Governance.
contract testERC20 is ERC20 {
    uint8 _decimals;

    constructor(string memory name_, string memory symbol_,uint8 decimals_) ERC20(name_,symbol_) {
        _decimals = decimals_;
    }

    function mint(uint256 _amount) public {
        require(totalSupply() <= 2**256-1,'Max totalSupply');
        _mint(msg.sender, _amount);
    }

    function mintTo(address to, uint _amount) public {
        require(totalSupply() <= 2**256-1,'Max totalSupply');
        _mint(to, _amount);
    }

    function decimals() public view virtual override returns (uint8){
        return _decimals;
    }

}
