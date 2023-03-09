---@meta

---Sets the color of the spinner
---@param color string | number A name or ansi color code
function SetColor(color) end

---Sets options for `smake.spinner`
---@param options table A table of options to set for smake.spinner and optionally `color` and `text`
function SetOptions(options) end

---Sets the text for the spinner
---@param text string The text to use
function SetText(text) end

---Starts the spinner animation
---@param text? string Calls SetText if text is provided
function Start(text) end

---Stops the spinner animation
---@param text? string Prints the text after the spinner stops if text is provided
function Stop(text) end

---Calls a function and starts and stops a spinner with the given text
---@param func function The function to call
---@param startText string The text to call EnhancedSpinner.Start with
---@param endText string The text to call EnhancedSpinner.Stop with
---@param ... any Arguments to pass to the function
function Call(func, startText, endText, ...) end