---@meta

---@diagnostic disable: duplicate-set-field

---@class gpp
gpp = {}

---Specifies the c++ standard. This is equivalent to the `-std=<std>`
---@param std string The c++ standard
function gpp.standard(std) end

---Specifies the input path(s). This is equivalent to `<name1> <name2> ...`
---@param ... string The input paths
function gpp.input(...) end

---Adds an include folder, possibly a library path, and possibly a library name. This is equivalent to `-I<includePath> -L<libPath> -l<libName>`
---@param includePath string The path to the include folder
---@param libPath? string The path to the lib folder
---@param libName? string The name of a lib file to load
---@overload fun(paths: table)
function gpp.include(includePath, libPath, libName) end

---Include multiple folders. This is equivalent to `-I<includePath>` for all paths
---@param paths table A table of include paths
function gpp.include(paths) end

---Specifies the output path. This is equivalent to `-o<path>`
---@param path string The path to output to
function gpp.output(path) end

---Adds flags to the g++ command. This is equivalent to `<flags>`
---@param ... string The flags to append to the build command
function gpp.flags(...) end

---Runs the finalized build command
function gpp.build() end

---Generates `compile_flags.txt` for clangd.
function gpp.generateCompileFlags() end

standard = gpp.standard
input = gpp.input
include = gpp.include
output = gpp.output
flags = gpp.flags
build = gpp.build
generateCompileFlags = gpp.generateCompileFlags