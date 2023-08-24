---@meta

---@class dependencyIncluder
dependencyIncluder = {}

---Includes a dependency. Links all files in the `lib` folder and includes the `include` directory.
---@param name string The name of the dependency. Must be inside of a `dependencies` folder.
function dependencyIncluder.includeDependency(name)end

---Includes multiple dependencies
---@param ... string The names of the dependencies to include
function dependencyIncluder.includeDependencies(...)end

IncludeDependency = dependencyIncluder.includeDependency
IncludeDependencies = dependencyIncluder.includeDependencies