# solidity-amm

`solidity-amm` explores blockchain tooling with a small Solidity codebase and local fixtures. The technical goal is to model constant-product AMM swaps and invariant fixtures.

## Why I Keep It Small

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Solidity Amm Review Notes

The first comparison I would make is `settlement risk` against `event finality` because it shows where the rule is most opinionated.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for event finality and nonce pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/solidity-amm-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `settlement risk` and `event finality`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Solidity checks add a pure review lens and Foundry coverage.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The same command runs the local verification path. The highest-scoring domain case is `edge` at 221, which lands in `ship`. The most cautious case is `baseline` at 83, which lands in `hold`.

## Scope

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
