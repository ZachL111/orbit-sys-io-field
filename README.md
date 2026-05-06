# orbit-sys-io-field

`orbit-sys-io-field` keeps a focused R implementation around systems programming. The project goal is to build an R toolkit that studies io behavior through transition tables, with invalid-transition tests and single-node deterministic mode.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how allocation pressure and guard slack should influence a review result.

## Orbit Sys IO Field Review Notes

The first comparison I would make is `dirty state` against `guard slack` because it shows where the rule is most opinionated.

## Highlights

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/orbit-sys-io-walkthrough.md` walks through the case spread.
- The R code includes a review path for `dirty state` and `guard slack`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`.

The R addition stays small enough to inspect in one sitting.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The same command runs the local verification path. The highest-scoring domain case is `stress` at 243, which lands in `ship`. The most cautious case is `edge` at 164, which lands in `ship`.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
