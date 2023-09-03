---@meta

---@class dependencyInstaller
dependencyInstaller = {}

---@class folder
folder = {}

---Concatenates a path to the folder path
---@param path string The path to concatenate
function folder:ConcatenatePath(path) end

---Checks the validity of the folder, and errors if it is invalid
function folder:CheckValidity() end

--- Moves a file from the folder to another path
--- @param relFrom any A path relative to the folder
--- @param to any A path to move the item to
--- @return folder self
function folder:Move(relFrom, to) end

--- Copies a file from the folder to another path following symbolic links
--- @param relFrom any A path relative to the folder
--- @param to any A path to move the item to
--- @return folder self
function folder:Copy(relFrom, to) end

--- Moves the include folder to the dependency folder
--- @param path any A relative path to the include folder or nil for `include`
--- @param folderName any An optional name for the include directory. For example if you set this to `test` your include folder will be `include/test/*`. 
--- @return folder self
function folder:MoveIncludeFolder(path, folderName) end

--- Moves all headers from a folder to the include folder
--- @param path string The path to move all .h and .hpp files from or nil for the folder path
--- @param folderName any An optional name for the include directory. For example if you set this to `test` your include folder will be `include/test/*`.
--- @return folder self
function folder:MoveHeaders(path, folderName) end

--- Moves the library folder to the dependency folder
---@param path any A relative path to the lib folder or nil for `lib`
--- @return folder self
function folder:MoveLibraryFolder(path) end

--- Moves the library file to the dependency library folder
---@param path any A relative path to the lib file
--- @return folder self
function folder:MoveLibrary(path) end

--- Moves all libraries from a folder to the library folder
--- @param path string The path to move all .a, .so, and .dylib files from or nil for the folder path
--- @return folder self
function folder:MoveLibraries(path) end

---Run commmand(s) in the folder
---@param ... string The commands to run
---@return folder self
function folder:RunIn(...) end

---Renames the folder and updates the path property
---@param newPath string The name or path to move it to
---@return folder self
function folder:Rename(newPath) end

---Deletes the folder and invalidates it
---@return folder self
function folder:Delete() end

---@class installer
installer = {}

---Concatenates a path to the dependency path
---@param path string The path to concatenate
function installer:ConcatenatePath(path) end

---Moves a file from the dependency folder to another path
---@param relFrom string A path relative to the dependency folder
---@param to string A path to move the item to
function installer:Move(relFrom, to) end

---Creates an include folder in the dependency folder
---@return string Returns the path to the created folder
function installer:MakeIncludeFolder() end

---Creates a library folder in the dependency folder
---@return string Returns the path to the created folder
function installer:MakeLibraryFolder() end

---Downloads and unzips a zip from a URL
---@param url string The url to download the zip from
---@return folder A folder object for the unzipped folder
function installer:DownloadAndUnzip(url) end

--- Downloads and extracts a tar file from a URL
---@param url string The url to download the tar from
---@return folder A folder object for the extracted folder
function installer:DownloadAndUntar(url)end

---Installs a dependency
---@param name string The name of the dependency
---@param callback fun(installer: installer)? The callback function to call when installing the dependency. An installer object is passed as the first argument. If callback is nil, it will attempt to use a preset installer.
function dependencyInstaller.InstallDependency(name, callback) end

---Installs a list of preset dependencies
---@param ... string The name of the dependency
function dependencyInstaller.InstallDependencies(...) end

InstallDependency = dependencyInstaller.InstallDependency
InstallDependencies = dependencyInstaller.InstallDependencies