```javascript
function transferOwnership(newOwner) {
  require(msg.sender == owner, "Only the owner can transfer ownership");
  require(newOwner != address(0), "New owner address cannot be zero");
  owner = newOwner;
}
```
This corrected version includes a check to ensure that `newOwner` is not the zero address.  This prevents malicious actors from exploiting the vulnerability.