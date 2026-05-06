# Orbit Sys IO Field Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 211 | ship |
| stress | dirty state | 243 | ship |
| edge | guard slack | 164 | ship |
| recovery | layout drift | 243 | ship |
| stale | allocation pressure | 195 | ship |

Start with `stress` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around dirty state and layout drift.
