pragma solidity 0.5.12;

contract HelloWorld {
  string message = "Hello world!";

  function getMessage() public view returns (string memory) {
    return message;
  }

  function setMessage(string memory newMessage) public payable {
    require(msg.value >= 0.1 ether);
    message = newMessage;
  }
}