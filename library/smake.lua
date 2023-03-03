smake = {}

---Imports a Smake plugin
---@param name string The name of the plugin to import
---@param global? boolean Make fields in all of the returned tables global
function import(name, global) end

---Runs commands
---@param ... string The commands to run
function run(...) end

---Runs commands in a given directory
---@param directory string The directory to run the commands in
---@param ... string The commands to run
function runIn(directory, ...) end