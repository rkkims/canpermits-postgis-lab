# Exercise 07 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Parcel interior | Existing address interior at (1,1). | It resolves to P1 uniquely. |  |  |
| Shared parcel edge | Existing address edge at (2,1). | Your edge rule produces a documented match status rather than a hidden arbitrary parcel. |  |  |
| Parcel gap | Existing address gap at (5,1). | It remains unmatched. |  |  |
| Overlapping parcels | Add a third polygon covering (1,1). | The interior address is reported as ambiguous or handled by a documented tie rule. |  |  |
| Missing address coordinate | Add an address with NULL lng and lat. | No point is invented; the row receives a missing-coordinate outcome. |  |  |
