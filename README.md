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

after 8b38a33: Dunno why performance is worse for tests that doesn't really use world inside systems...
┌──────────────┬────────────────┬────────────────┐
│   (index)    │      op_s      │     ns_op      │
├──────────────┼────────────────┼────────────────┤
│   packed_1   │ '243,500 op/s' │ '4,106 ns/op'  │
│   packed_5   │ '240,466 op/s' │ '4,158 ns/op'  │
│ simple_iter  │ '120,898 op/s' │ '8,271 ns/op'  │
│  frag_iter   │ '393,188 op/s' │ '2,543 ns/op'  │
│ entity_cycle │ '16,325 op/s'  │ '61,252 ns/op' │
│  add_remove  │ '38,328 op/s'  │ '26,090 ns/op' │
└──────────────┴────────────────┴────────────────┘
