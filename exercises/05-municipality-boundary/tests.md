# Exercise 05 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Same name, different province | Existing two Victoria features with PRUID 59 and 35. | The intended city/province lookup selects exactly one feature. |  |  |
| No authoritative match | Request a city/province pair absent from boundary_feed. | Nothing is silently inserted under a guessed identity. |  |  |
| Duplicate authoritative match | Add a second feature with the same city and PRUID. | The import reports ambiguity rather than selecting an arbitrary row. |  |  |
| Multipart revision | Replace the selected feature with two disjoint polygon parts. | Both parts remain in one stored municipal boundary. |  |  |
| Geometry refresh | Change the selected feature shape but keep its CSD identity. | The refresh outcome is auditable as a new geometry/version rather than a second city row. |  |  |
