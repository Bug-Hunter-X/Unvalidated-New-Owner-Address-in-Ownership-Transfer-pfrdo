```javascript
function transferOwnership(newOwner) {
  require(msg.sender == owner, "Only the owner can transfer ownership");
  owner = newOwner;
}
```
This code snippet is vulnerable because it doesn't check if `newOwner` is a valid address (i.e., non-zero).  A malicious actor can exploit this by setting `newOwner` to 0x0000000000000000000000000000000000000000. This will lead to a loss of ownership, making the contract ungovernable.