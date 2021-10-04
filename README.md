# piecs
PIECS is an entity component system with some batteries included

TODO

best bench yet:

┌──────────────┬────────────────┬────────────────┐
│   (index)    │      op_s      │     ns_op      │
├──────────────┼────────────────┼────────────────┤
│   packed_1   │ '384,672 op/s' │ '2,599 ns/op'  │
│   packed_5   │ '381,255 op/s' │ '2,622 ns/op'  │
│ simple_iter  │ '247,955 op/s' │ '4,032 ns/op'  │
│  frag_iter   │ '588,789 op/s' │ '1,698 ns/op'  │
│ entity_cycle │ '10,940 op/s'  │ '91,400 ns/op' │
│  add_remove  │ '24,253 op/s'  │ '41,231 ns/op' │
└──────────────┴────────────────┴────────────────┘
