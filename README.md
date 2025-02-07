# Unvalidated New Owner Address in Ownership Transfer

This repository demonstrates a common vulnerability in decentralized applications (DApps) where the `transferOwnership` function lacks proper validation of the `newOwner` address.  Failure to validate the address allows a malicious actor to render the contract ungovernable by setting the owner to the zero address.

The `bug.sol` file contains the vulnerable code, and `bugSolution.sol` provides the corrected version.  Always validate inputs to protect your DApp from vulnerabilities.