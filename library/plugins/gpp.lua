---@meta

---@diagnostic disable: duplicate-set-field

---Specifies the c++ standard. This is equivalent to the `-std=<std>`
---@param std string The c++ standard
function standard(std) end

---Specifies the input path(s). This is equivalent to `<name1> <name2> ...`
---@param ... string The input paths
function input(...) end

---Adds an include folder, possibly a library path, and possibly a library name. This is equivalent to `-I<includePath> -L<libPath> -l<libName>`
---@param includePath string The path to the include folder
---@param libPath? string The path to the lib folder
---@param libName? string The name of a lib file to load
---@overload fun(paths: table)
function include(includePath, libPath, libName) end

---Include multiple folders. This is equivalent to `-I<includePath>` for all paths
---@param paths table A table of include paths
function include(paths) end

---Specifies the output path. This is equivalent to `-o<path>`
---@param path string The path to output to
function output(path) end

---Adds flags to the g++ command. This is equivalent to `<flags>`
---@param ... string The flags to append to the build command
function flags(...) end

---Runs the finalized build command
function build() end

---Generates `compile_flags.txt` for clangd.
function generateCompileFlags() end