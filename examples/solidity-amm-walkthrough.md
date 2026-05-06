# Solidity Amm Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | event finality | 83 | hold |
| stress | nonce pressure | 166 | ship |
| edge | settlement risk | 221 | ship |
| recovery | proof depth | 183 | ship |
| stale | event finality | 186 | ship |

Start with `edge` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`edge` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
