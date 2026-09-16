# Exercise 13 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Inside actual city | Existing inside point (0.5,0.5). | Both the map rectangle and city polygon recognize it. |  |  |
| Rectangle-only point | Existing rectangle_only point (3,3). | It passes rectangular filtering but is not asserted to be inside the L-shaped city. |  |  |
| Outside both | Existing outside point (5,3). | Neither geometry claims it. |  |  |
| Island district | Add a second disconnected part to the municipal boundary and a point on it. | The real boundary can include the island even when a simple shape assumption would miss it. |  |  |
| Outlier widens map extent | Expand the stored rectangle to include an erroneous distant permit point. | Jurisdiction membership does not change merely because display bounds changed. |  |  |
