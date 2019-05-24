// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
pragma solidity 0.5.8;

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
import 'https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-solidity/v2.2.0/contracts/token/ERC20/IERC20.sol';
import 'https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-solidity/v2.2.0/contracts/token/ERC721/IERC721.sol';

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
/**
 * See https://www.investopedia.com/terms/t/trust.asp
 */
contract Trustee {

    address internal _settlor;
    uint256 internal _timeLimit;
    address internal _beneficiary;

    constructor (address beneficiary, uint256 timeLimit) public {
        
        require(timeLimit > block.timestamp);
        require(beneficiary != address(0));
        
        _settlor = msg.sender;
        
        _timeLimit = timeLimit;
        _beneficiary = beneficiary;
    }

    function settlor () external view returns (address) {
        return _settlor;
    }

    function beneficiary () external view returns (address) {
        return _beneficiary;
    }
    
    function timeLimit () external view returns (uint256) {
        return _timeLimit;
    }

    function isConditionFulfilled () public view returns (bool) {
        return _isConditionFulfilled();
    }
    
    function () external payable {
        // Thanks.
    }

    function transfer () external {
        require(_isConditionFulfilled());
        msg.sender.transfer(address(this).balance);
    }

    function transferERC20 (address tokenAddress) external {
        require(_isConditionFulfilled());
        IERC20 token = IERC20(tokenAddress);
        token.transfer(_beneficiary, token.balanceOf(address(this)));
    }

    function transferERC721 (address tokenAddress, uint256 tokenId) external {
        require(_isConditionFulfilled());
        IERC721 token = IERC721(tokenAddress);
        token.transferFrom(address(this), _beneficiary, tokenId);
    }

    function _isConditionFulfilled () internal view returns (bool) {
        return block.timestamp > _timeLimit;   
    }
}