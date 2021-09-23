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
  get length(): u32;
  get(index: u32): u32;
  __uget(index: u32): u32;
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
  protected _mask: usize;
  protected maxValue: u32;
  constructor(maxValue: u32);
  has(value: u32): bool;
  __grow(valueToAccomodate: u32): void;
  xor(value: u32): usize;
  or(value: u32): usize;
  and(value: u32): usize;
  not(): usize;
  union(other: usize): usize;
  intersection(other: usize): usize;
  symmetrictDifference(other: usize): usize;
  isSuperSetOf(other: usize): bool;
  toString(): usize;
  copy(): usize;
}
export abstract class InsideWorld {
  static wrap(ptr: usize): InsideWorld;
  valueOf(): usize;
  hasEntity(entity: u32): bool;
  createEntity(): u32;
  deleteEntity(entity: u32): void;
  defer(action: usize): void;
  constructor();
}
export class World extends InsideWorld {
  static wrap(ptr: usize): World;
  valueOf(): usize;
  hasEntity(entity: u32): bool;
  createEntity(): u32;
  deleteEntity(entity: u32): void;
  defer(action: usize): void;
  constructor();
  _executeDeferredActions(): void;
  registerSystem(system: usize, query: usize): usize;
  init(): void;
  update(): usize;
  hasComponent(entity: u32, componentId: u32): bool;
  setComponent(entity: u32, componentId: u32): void;
  removeComponent(entity: u32, componentId: u32): void;
}
export var ArrayU32_ID: u32;
export class QueryMask {
  static wrap(ptr: usize): QueryMask;
  valueOf(): usize;
  readonly type: u8;
  readonly mask: usize;
  constructor(type: u8, mask: usize);
}
export function all(componentIds: usize): usize;
export function any(componentIds: usize): usize;
export function not(componentIds: usize): usize;
export function or(queryMasks: usize): usize;
export function and(queryMasks: usize): usize;
export class Query {
  static wrap(ptr: usize): Query;
  valueOf(): usize;
  constructor(_queryMasks: usize);
  tryAdd(archetype: usize): void;
  get length(): i32;
  __get(i: i32): usize;
  __uget(i: i32): usize;
}
export class SparseSet {
  static wrap(ptr: usize): SparseSet;
  valueOf(): usize;
  get length(): u32;
  constructor(initialSize: u32);
  get values(): usize;
  has(value: u32): bool;
  get(index: u32): u32;
  uget(index: u32): u32;
  add(value: u32): usize;
  pop(): u32;
  delete(value: u32): usize;
}
export class Vector {
  static wrap(ptr: usize): Vector;
  valueOf(): usize;
  get length(): u32;
  constructor(size: u32, growFactor: f32, sparse: bool);
  get size(): u32;
  get sparse(): bool;
  __get(index: u32): u32;
  __set(index: u32, value: u32): void;
  __uget(index: u32): u32;
  __uset(index: u32, value: u32): void;
  push(value: u32): u32;
  pop(): u32;
  subArray(): usize;
}
export const memory: WebAssembly.Memory;
export function __new(size: usize, id: u32): usize;
export function __pin(ptr: usize): usize;
export function __unpin(ptr: usize): void;
export function __collect(): void;
export const __rtti_base: usize;
export const __setArgumentsLength: ((n: i32) => void) | undefined;
