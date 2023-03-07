---@meta

---@class spinner
---@field symbols table A table of strings to use for the animation
---@field interval number The delay between each frame in seconds
---@field start fun(text: string) Starts the spinner animation with the given text
---@field stop fun(text?: string) Stops the animation and prints text if provided
spinner = {}

---@class smake
---@field config table A table representing the global and local configurations combined. This allows local configurations to override the global configuration.
---@field spinner spinner A table holding information about the spinner
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