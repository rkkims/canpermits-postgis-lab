# Exercise 03 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Single polygon | Existing square GeoJSON feature. | The target accepts an area feature under its declared geometry type. |  |  |
| Multipart polygon | Existing islands GeoJSON feature. | Both disjoint parts survive loading as one source feature. |  |  |
| Wrong geometry family | Existing line feature. | It is reported separately and does not become an area. |  |  |
| Duplicate source key | Add a second square feature with source_id square. | A rerun or batch has a deterministic duplicate-key outcome. |  |  |
| Missing or empty geometry | Add one NULL geometry and one empty polygon. | Both get explicit outcomes; an unusable area is not presented as a valid boundary. |  |  |
