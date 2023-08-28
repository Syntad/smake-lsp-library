---@meta

---@class Plugin
---@field Command fun(...)
---@field Import fun()
Plugin = {}

---@class spinner
---@field symbols table A table of strings to use for the animation
---@field interval integer The delay between each frame in milliseconds. This must be an integer.
spinner = {}

---Starts the spinner animation
function spinner.start() end

---Stops the spinner animation
function spinner.stop() end

---Sets the text for the spinner
---@param text string The text to use
function spinner.setText(text) end

---@class smake
---@field config table A table representing the global and local configurations combined. This allows local configurations to override the global configuration.
---@field spinner spinner A library for console spinners. Look at the official enhancedSpinner plugin for a more abstracted library.
smake = {}

---@alias plugin
---| '"smake/dependencyIncluder"'  # Includes dependencies from your dependencies folder
---| '"smake/dependencyInstaller"' # Installs dependencies from a preset or custom function
---| '"smake/enhancedSpinner"'     # An easier to use and enhanced spinner class
---| '"smake/gpp"'                 # A plugin to make using the g++ compiler easier
---| '"smake/libraryInstaller"'    # A custom import function to install libraries for Smake plugins
---| '"smake/utils/fs"'            # A simple filesystem plugin
---| '"smake/utils/utils"'         # Miscellaneous utilities

---Imports a Smake plugin. If it does not exist it will return nil.
---@param name plugin|string The name of the plugin to import
---@param global? boolean Make fields in all of the returned tables global
---@return any
function import(name, global) end

---Runs commands
---@param ... string The commands to run
function run(...) end

---Runs commands in a given directory
---@param directory string The directory to run the commands in
---@param ... string The commands to run
function runIn(directory, ...) end