# Exercise 06 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Interior neighbourhood A | Existing permit 1 at POINT(1 1), municipality 7. | It has one candidate: neighbourhood 1. |  |  |
| Interior neighbourhood B | Existing permit 2 at POINT(3 1), municipality 7. | It has one candidate: neighbourhood 2. |  |  |
| Shared boundary | Existing permit 3 at POINT(2 1). | Its zero/one/multiple-match outcome is explicit under your boundary policy. |  |  |
| Missing geometry | Existing permit 4 with NULL geom. | It remains unresolved and is counted as missing location. |  |  |
| Other municipality | Add a permit at POINT(1 1) with municipality_id 8. | It cannot inherit municipality 7’s neighbourhood solely because its point overlaps. |  |  |
