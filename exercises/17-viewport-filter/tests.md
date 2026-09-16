# Exercise 17 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Feature inside viewport | Use the suggested viewport with zoning area 1. | It is returned if it meets your inclusion rule. |  |  |
| Feature crosses viewport | Use zoning area 2, which crosses the viewport edge. | The partial feature is considered; do not require all vertices to be inside. |  |  |
| Feature outside viewport | Use zoning area 3, far from the suggested viewport. | It is excluded from the small-viewport result. |  |  |
| Edge contact | Move the viewport edge to touch a polygon boundary exactly. | Document the inclusion behavior chosen for contact-only cases. |  |  |
| Broad viewport and detailed geometry | Expand the viewport and add a many-vertex polygon. | Record rows, response size, and plan; inspect whether simplification changes visible meaning. |  |  |
