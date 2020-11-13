pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract Challenge_Three is Ownable{
    
    uint index=1; // 
    
    struct List {
        
    string value;
    bool complete;
    
    }
    
    
    mapping(uint => List) lists;

    function setValue(string calldata _value) external onlyOwner {
        lists[index].value=_value;
        lists[index].complete=false;
        index++;
    }
    
    function getValue(uint _index) view external onlyOwner returns(uint ,string memory ,bool) {
    
        return (_index,lists[_index].value,lists[_index].complete);
    }
    
    function deleteValue(uint _index) external onlyOwner {
        lists[_index].value=''; 
        lists[_index].complete=true; // Delete value means task is complete this is will be true
    }
    
}
