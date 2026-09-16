# Exercise 11 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Interior overlap | Existing point overlap at (2.5,1). | Both candidate areas are detected; selection is not dependent on row order. |  |  |
| No match | Existing point outside at (6,1). | It has an explicit unmatched status. |  |  |
| Edge plus overlap | Existing point edge at (2,1). | Report candidate count under the chosen boundary rule. |  |  |
| Duplicate geometry row | Add area C with the same shape as A but a new ID. | The duplicate is detectable as a data issue rather than silently becoming an extra physical area. |  |  |
| NULL geometry | Add point missing with NULL geom. | It has a missing-location outcome distinct from a valid point outside all areas. |  |  |
