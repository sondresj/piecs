type i8 = number;
type i16 = number;
type i32 = number;
type i64 = bigint;
type isize = number;
type u8 = number;
type u16 = number;
type u32 = number;
type u64 = bigint;
type usize = number;
type f32 = number;
type f64 = number;
type bool = boolean | number;
export class Archetype {
  static wrap(ptr: usize): Archetype;
  valueOf(): usize;
  constructor(componentMask: usize);
  mask: usize;
  readonly id: usize;
  get length(): i32;
  get(index: i32): u32;
  __uget(index: i32): u32;
  hasComponent(componentId: u32): bool;
  hasEntity(entity: u32): bool;
  addEntity(entity: u32): void;
  removeEntity(entity: u32): void;
  get entities(): usize;
  transform(componentId: u32, archetypes: usize, queries: usize): usize;
}
export class BitMask {
  static wrap(ptr: usize): BitMask;
  valueOf(): usize;
  constructor(maxValue: u32);
  has(value: u32): bool;
  __grow(valueToAccomodate: u32): void;
  xor(value: u32): usize;
  or(value: u32): usize;
  and(value: u32): usize;
  not(): usize;
  union(other: usize): usize;
  intersection(other: usize): usize;
  difference(other: usize): usize;
  symmetrictDifference(other: usize): usize;
  contains(other: usize): bool;
  intersects(other: usize): bool;
  toString(): usize;
  copy(): usize;
}
export class World {
  static wrap(ptr: usize): World;
  valueOf(): usize;
  getNextComponentId(): u32;
  registerQuery(query: usize): void;
  init(): void;
  hasEntity(entity: u32): bool;
  createEntity(): u32;
  deleteEntity(entity: u32): void;
  hasComponent(entity: u32, componentId: u32): bool;
  setComponent(entity: u32, componentId: u32): void;
  removeComponent(entity: u32, componentId: u32): void;
  constructor();
}
export var ArrayU32_ID: u32;
export class QueryMask {
  static wrap(ptr: usize): QueryMask;
  valueOf(): usize;
  readonly type: u8;
  readonly mask: usize;
  constructor(type: u8, mask: usize);
  match(target: usize): bool;
}
export class QueryMaskGroup {
  static wrap(ptr: usize): QueryMaskGroup;
  valueOf(): usize;
  readonly type: u8;
  readonly subQueries: usize;
  constructor(type: u8, subQueries: usize);
  match(target: usize): bool;
}
export function all(componentIds: usize): usize;
export function any(componentIds: usize): usize;
export function not(componentIds: usize): usize;
export function and(subQueries: usize): usize;
export function or(subQueries: usize): usize;
export class Query {
  static wrap(ptr: usize): Query;
  valueOf(): usize;
  constructor(query: usize);
  tryAdd(archetype: usize): bool;
  get length(): i32;
  get(i: i32): usize;
  __uget(i: i32): usize;
}
export class SparseSet {
  static wrap(ptr: usize): SparseSet;
  valueOf(): usize;
  constructor(initialSize: u32);
  get values(): usize;
  get length(): i32;
  has(value: u32): bool;
  get(index: i32): u32;
  uget(index: i32): u32;
  add(value: u32): usize;
  pop(): u32;
  delete(value: u32): usize;
}
export class FlagComponentSet {
  static wrap(ptr: usize): FlagComponentSet;
  valueOf(): usize;
  constructor(world: usize);
  get id(): u32;
  add(entity: u32): void;
  has(entity: u32): bool;
  remove(entity: u32): void;
}
export var flagComponentSet_ID: u32;
export var i8ComponentSet_ID: u32;
export var i16ComponentSet_ID: u32;
export var i32ComponentSet_ID: u32;
export var u8ComponentSet_ID: u32;
export var u16ComponentSet_ID: u32;
export var u32ComponentSet_ID: u32;
export var f32ComponentSet_ID: u32;
export const memory: WebAssembly.Memory;
export function __new(size: usize, id: u32): usize;
export function __pin(ptr: usize): usize;
export function __unpin(ptr: usize): void;
export function __collect(): void;
export const __rtti_base: usize;
export const __setArgumentsLength: ((n: i32) => void) | undefined;
