# Review Journal

The review surface for `solidity-amm` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its blockchain tooling focus without claiming live deployment or external usage.

## Cases

- `baseline`: `event finality`, score 83, lane `hold`
- `stress`: `nonce pressure`, score 166, lane `ship`
- `edge`: `settlement risk`, score 221, lane `ship`
- `recovery`: `proof depth`, score 183, lane `ship`
- `stale`: `event finality`, score 186, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
