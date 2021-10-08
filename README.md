# piecs
PIECS is an entity component system with some batteries included, some not.

This project is very much a work in progress, everything is subject to change.

You propably know what an ECS is, if not: https://en.wikipedia.org/wiki/Entity_component_system

Most of the concepts used in this ECS implementation is not new, but I couldn't find an ecs with the feature set, DX and performance I wanted, so here's my attempt at an ECS interpretation and implementation.

## Noteable Features

- Virtually no garbage collecting
- Prefabrication of archetypes
- Defering: Defer whatever you want to the end of an update cycle
- Events: Coming soon (tm)
- DX:
  - Implement in Typescript
  - Helpful error messages
  - Minimal, easy to understand api
- Register systems: No need to invoke them explicitly
- Add systems/queries/prefabs/components whenever you want. The only requirement is that the world is initialized once before the first update.
- BYO (Bring Your Own) Component sets: Might add an optional component manager/store in the future, but you may keep track of component values however you choose. However, there's propably no clean abstraction to component sets that doesn't tank the performance in javascript and serves all use-cases.

## Api

TODO

### World.initialize()

`world.initialize(): void`

Initialize must be done once before the first update. Safe to call multiple times, but does nothing if the world is already initialized.
Initialize serves only one purpose: to ensure unique archetypes in each query by only testing each archetype vs each query once.
This enables a less complex and faster query system.


## WASM

There's an even more WIP implementation of PIECES in AssemblyScript here.
Currently the overhead of js-wasm is too big for this to make sense to use in JS.
Hopefully this improves in the future.
