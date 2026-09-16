# Exercise 08 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Valid zone | Existing Z1 with designation R. | One queryable area retains source ID, designation, and raw attributes. |  |  |
| Self-intersecting zone | Existing Z2 bow-tie geometry. | The record has an explicit repaired or quarantined outcome with a validity check. |  |  |
| Missing source ID | Existing row with NULL source_id. | It is counted as skipped or quarantined; it cannot overwrite an unrelated zone. |  |  |
| Repeated source ID | Existing later Z1 row with designation R2. | The result of duplicate rows in one batch is defined and repeatable. |  |  |
| Interrupted load | Simulate a failure after writing the first row. | The persisted state follows your transaction policy and can be explained before rerun. |  |  |
