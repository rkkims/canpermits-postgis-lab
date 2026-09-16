# Exercise 09 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Material split | Existing P1 crossed by zones A and B at x=7. | The parcel reports both material designations under your rule. |  |  |
| Boundary touch only | Existing zone C begins at x=10, P1 ends at x=10. | C is distinguished from a zone with positive parcel coverage. |  |  |
| Thin sliver | Add a zone intersecting P1 by a very narrow strip. | Report its measured overlap and apply your stated materiality threshold or rule. |  |  |
| Same designation, separate features | Add a second zone polygon named R intersecting P1. | The designation list does not misleadingly duplicate R unless the output intentionally reports features. |  |  |
| Unzoned parcel | Add a parcel well outside all three zones. | The result explicitly distinguishes no zone match from query failure. |  |  |
