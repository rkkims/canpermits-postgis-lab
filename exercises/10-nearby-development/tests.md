# Exercise 10 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Own site has two records | Existing records 1 and 2 at subject point. | Your own-site rule treats them consistently and does not inflate nearby-site count. |  |  |
| Nearby site has two records | Existing records 3 and 4 share site_id near. | The site count and nearest list make clear whether they count as one site or two records. |  |  |
| Farther site | Existing record 5 at (-79.3,43.7). | A modest radius around the subject excludes it. |  |  |
| Exactly at radius | Add a site at a distance equal to your chosen radius. | Record whether the threshold includes it and verify the query agrees. |  |  |
| Unknown point | Add a development record with NULL geom. | It does not acquire a fabricated distance or enter a distance-ranked list. |  |  |
