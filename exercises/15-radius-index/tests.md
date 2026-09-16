# Exercise 15 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Small table baseline | Run the radius query on the four seeded permits. | Record the plan; do not assume a sequential scan is inherently wrong at this size. |  |  |
| Large dense sample | Generate many nearby and distant synthetic points, then repeat the same radius query. | Record rows examined, buffers, and timing before and after the index. |  |  |
| Broad radius | Increase radius until much of the table qualifies. | Explain any change in the planner’s index choice. |  |  |
| NULL and inactive rows | Use seeded NULL geom and add a deleted row if your query excludes it. | Document their effect on result count and any partial-index predicate. |  |  |
| Expression mismatch | Compare the plan after changing the indexed query expression or cast. | Show whether the intended index still supports the query. |  |  |
