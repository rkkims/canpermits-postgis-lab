# Exercise 18 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Duplicate across pages | Existing F2 occurs on pages 1 and 2. | The load has a defined single-feature result and reports the duplicate. |  |  |
| Feature crosses clip edge | Treat F2 as a feature crossing the requested bbox boundary. | Its inclusion follows the WFS spatial-filter contract, not only its centroid. |  |  |
| Axis-order swap | Request the same region with longitude/latitude order reversed. | A QA check reveals the implausible or empty geographic response. |  |  |
| Failed second page | Stop after page 1 and mark the run incomplete. | The run is not presented as a complete source snapshot. |  |  |
| Source revision on rerun | Change F1 geometry and rerun with the same source ID. | The new state and run metadata make the update auditable. |  |  |
