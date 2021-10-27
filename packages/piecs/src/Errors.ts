export class EntityUndefinedError extends Error {
    constructor() {
        super(`
Seems like you're iterating entities from 0..N and transforming entities.
This may remove the entity from the query results passed to your system.
Try iterating entities backwards:
\`for (let i = entities.length -1; i >= 0; i--) {...}\`
You can also wrap the transformation in \`world.defer(() => {...})\`
`)
    }
}
export class EntityDeletedError extends Error {
    constructor(entity: number) {
        super(`Entity ${entity} is deleted`)
    }
}
export class EntityNotExistError extends Error {
    constructor(entity: number) {
        super(`Entity ${entity} does not exist`)
    }
}
export class WorldNotInitializedError extends Error {
    constructor() {
        super('World not initialized')
    }
}
