# Exercise 04 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Interior point | Existing inside POINT(1 1). | Classify as a member of area A. |  |  |
| Exterior point | Existing outside POINT(3 1). | Classify as outside A. |  |  |
| Edge point | Existing edge POINT(2 1). | Record the chosen boundary policy and show that the result follows it. |  |  |
| Hole interior | Add a polygon with a hole and a point inside the hole. | The point is not reported as inside the filled area. |  |  |
| Shared edge | Add a neighbouring polygon meeting A at x=2. | Report whether the point at x=2 has zero, one, or multiple candidates under your chosen rule. |  |  |
