# Exercise 16 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| One parcel, multiple pieces | Divide a constraint so parcel 1 intersects more than one part. | Parcel 1 remains one affected parcel in the final answer. |  |  |
| Coverage equality | Compare original-geometry coverage with the sum or union of piece coverage. | The final covered area agrees within a stated numerical tolerance. |  |  |
| Boundary-only touch | Place a parcel so it touches a constraint edge without positive-area overlap. | Your reported coverage follows the stated touch rule. |  |  |
| Polygon hole | Add a hole with a parcel entirely inside it. | That parcel is not reported as covered by the filled constraint area. |  |  |
| Performance scale | Add many vertices and parcels beyond the starter fixture. | Report comparable plans and timings for original and divided geometry. |  |  |
