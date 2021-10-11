import type { Archetype } from './Archetype'
import type { System } from './System'

export interface InsideWorld {
    /**
     * Check if the entity exists in the world
     */
    hasEntity(entity: number): boolean
    /**
     * Create an entity.
     * An entity is just an Id.
     * Previously deleted entity id's will be reused
     */
    createEntity(): number
    /**
     * Delete an entity, removing it from its current archetype (loosing all of its components).
     * @throws {EntityUndefinedError | EntityDeletedError | EntityNotExistError}
     */
    deleteEntity(entity: number): void
    /**
     * Defer execution of an action until the end of the update cycle (after all systems has been executed)
     * For best performance you try to defer a batched action instead of many small actions, or avoid defering if possbile
     */
    defer(action: () => void): void
    /**
     * Check if the entity has a componentId
     */
    hasComponentId(entity: number, componentId: number): boolean
    /**
     * Adds the componentId to the entity.
     * The entity will be moved to a different archetype
     * @throws {EntityUndefinedError | EntityDeletedError | EntityNotExistError}
     */
    addComponentId(entity: number, componentId: number): void
    /**
     * Removes the componentId from the entity.
     * The entity will be moved to a different archetype
     * @throws {EntityUndefinedError | EntityDeletedError | EntityNotExistError}
     */
    removeComponentId(entity: number, componentId: number): void
    /**
     * Transform the entity to that of a prefabricated archetype.
     * Any components added to the entity that does not exist in the prefabricate will be removed.
     * This is a sligthly faster operation than adding/subtracting components
     * @throws {EntityUndefinedError | EntityDeletedError | EntityNotExistError}
     */
    transformEntity(entity: number, prefabricate: Archetype): void
}

export interface OutsideWorld extends InsideWorld {
    /**
     * Component Id is an incrementing number
     * Use the id in conjunction with your component values, assign it to entities and query for componet ids
     */
    createComponentId(): number
    /**
     * Provide a known combination of `componentIds` constituting an archetype.
     * The component ids can be of your choosing, but be carefull not to use the same id for different components.
     * You should either create all `componentIds` using `createComponentId` first and use the created component ids in the prefacbricate,
     * Or make all of you prefabricates before creating new component ids using `createComponentId`
     */
    prefabricate(componentIds: number[]): Archetype
    /**
     * Registers a system to be executed for each update cycle.
     * Use the `createEntitySystem` or `createArchetypeSystem` helpers to create the system.
     * A system may not be executed if it's `Query` does not match any `Archetype`s.
     */
    registerSystem(system: System): OutsideWorld
    /**
     * Initialize the world, must be done before the first update.
     * Subsequent calls to initialize will be voided.
     */
    initialize(): void
    /**
     * Update the world, executing all registered systems with queries matching 1 or more `Archetype`.
     * Typically you want to call `update` on each animation frame (`window.requestAnimationFrame`).
     * @throws {WorldNotInitializedError} if `initialized` has not been called
     */
    update(): void
}
