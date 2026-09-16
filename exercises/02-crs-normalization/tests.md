# Exercise 02 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Known projected CRS | Use existing known point labelled EPSG:26917. | Its location can be compared with 4326 data after a declared CRS operation; report the measured separation. |  |  |
| Unknown source CRS | Use existing unknown point with the same numeric pair but no source_srid. | It is not silently treated as 4326 or asserted to match the reference. |  |  |
| Already geographic | Add POINT(-79.38 43.65) with source_srid 4326. | The stored location remains at that longitude and latitude. |  |  |
| Mislabeled coordinates | Add POINT(-79.38 43.65) but label it 26917. | A QA check exposes implausible projected-coordinate magnitude or an implausible transformed result. |  |  |
| Mixed-SRID comparison | Compare the projected row directly with a 4326 row as a diagnostic. | Document the failure or misleading outcome, then verify your intended comparison avoids it. |  |  |
