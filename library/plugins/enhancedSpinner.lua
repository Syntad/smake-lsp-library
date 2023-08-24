---@meta

---@class enhancedSpinnerOptions
---@field interval number? The interval for the spinner
---@field symbols (string|table)? A string for the preset symbols or a table of symbols
---@field color (string|number)? The color of the text, can be a string for a preset or an ansi color code
---@field text string? The text to display. Equivalent to calling SetText

---@class enhancedSpinner
enhancedSpinner = {}

---Sets the color of the spinner
---@param color string | number A name or ansi color code
function enhancedSpinner.SetColor(color) end

---Sets options for `smake.spinner`
---@param options enhancedSpinnerOptions The options to set for smake.spinner
function enhancedSpinner.SetOptions(options) end

---Sets the text for the spinner
---@param text string The text to use
function enhancedSpinner.SetText(text) end

---Starts the spinner animation
---@param text? string Calls SetText if text is provided
function enhancedSpinner.Start(text) end

---Stops the spinner animation
---@param text? string Prints the text after the spinner stops if text is provided
function enhancedSpinner.Stop(text) end

---Calls a function and starts and stops a spinner with the given text
---@param func function The function to call
---@param startText string The text to call EnhancedSpinner.Start with
---@param endText string The text to call EnhancedSpinner.Stop with
---@param ... any Arguments to pass to the function
function enhancedSpinner.Call(func, startText, endText, ...) end

-- Globals

SetColor = enhancedSpinner.SetColor
SetOptions = enhancedSpinner.SetOptions
SetText = enhancedSpinner.SetText
Start = enhancedSpinner.Start
Stop = enhancedSpinner.Stop
Call = enhancedSpinner.Call