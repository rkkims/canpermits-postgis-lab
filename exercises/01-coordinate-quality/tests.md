# Exercise 01 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Valid Toronto coordinate | Existing A: lon -79.38, lat 43.65. | A receives a trusted 4326 point at the supplied location. |  |  |
| Reversed ordinates | Existing B: lon 43.65, lat -79.38. | B is not treated as a trusted Canadian permit point; original numbers remain inspectable. |  |  |
| Zero sentinel | Existing C: lon 0, lat 0. | C does not contribute geometry to maps or spatial matches. |  |  |
| No location | Existing D: both coordinates NULL. | The permit remains representable without a point and has a distinct missing-location outcome. |  |  |
| Wrong city but in Canada | Add a Toronto-labelled row at lon -75.70, lat 45.42. | The outcome distinguishes country-level plausibility from municipality-level confidence. |  |  |
