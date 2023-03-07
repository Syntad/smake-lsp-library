---@meta

--- Sets the color of the spinner
---@param color string | number A name or ansi color code
function SetColor(color) end

--- Sets options for `smake.spinner`
---@param options table A table of options to set for smake.spinner and optionally `color`
function SetOptions(options) end

--- Starts the spinner animation with the given text
---@param text string The text to display with the spinner
function Start(text) end

--- Stops the animation and prints text if provided
---@param text? string
function Stop(text) end