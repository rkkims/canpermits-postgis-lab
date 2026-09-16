# Exercise 12 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Valid polygon | Existing valid square. | It is accepted without an unexplained shape change. |  |  |
| Self-intersection | Existing bowtie polygon. | The validation report names the defect and records the repair or quarantine decision. |  |  |
| Empty polygon | Existing empty geometry. | It is not counted as a usable area. |  |  |
| NULL geometry | Existing missing row. | It has an explicit missing-input status. |  |  |
| Repair changes area/type | For the bowtie, compare type and area before and after your chosen handling. | The change is measured and judged, rather than accepted only because insertion succeeds. |  |  |
