# Field Notes

This note keeps the blockchain tooling assumptions visible beside the checks.

The domain cases cover `event finality`, `nonce pressure`, `settlement risk`, and `proof depth`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `settlement risk` and `event finality`, so those are the first two cases I would preserve during a refactor.

The language-specific addition keeps the review model in pure contract functions and Foundry tests.
