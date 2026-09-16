# Exercise 14 — test cases

Use each row as a check after your own SQL attempt. Add any needed synthetic input to your scratch database. Predict the outcome before running the query. Record the actual result and pass/fail below; for an open engineering choice, consistency with your documented policy is the pass criterion.

| Case | Input or setup | Expected behavior or evidence | Observed | Pass? |
|---|---|---|---|---|
| Repeated source ID | Existing two distant polygons both labelled COMPLEX. | They are not treated as one physical parcel for zone aggregation. |  |  |
| Different zones at those locations | Existing premise a in zone R and premise b in zone C. | Neither premise inherits the other location’s designation. |  |  |
| Unique parcel ID | Existing P-1 has only one polygon. | It can be assessed independently of the ambiguous ID. |  |  |
| Duplicate copy of same feature | Add an identical duplicate polygon with a new feature_id and same parcel_id. | Document whether your identity test distinguishes duplication from two distinct physical locations. |  |  |
| Legitimate multipart parcel | Add one MultiPolygon row containing two parts under a single ID. | The row is evaluated as one feature without assuming every multipart geometry is an ID collision. |  |  |
