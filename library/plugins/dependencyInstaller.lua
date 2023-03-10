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

---Moves a file from the folder to another path
---@param relFrom string A path relative to the folder
---@param to string A path to move the item to
---@return folder self
function folder:Move(relFrom, to) end

---Moves the include folder to the dependency folder
---@overload fun()
---@param path string A relative path to the include folder or nil for `include`
---@return folder self
function folder:MoveInclude(path) end

---Moves the library folder to the dependency folder
---@overload fun()
---@param path string A relative path to the lib folder or nil for `lib`
---@return folder self
function folder:MoveLibrary(path) end

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

---Installs a dependency
---@alias InstallDependencyCallback fun(installer: installer)
---@param name string The name of the dependency
---@param callback InstallDependencyCallback The callback function to call when installing the dependency. An installer object is passed as the first
function dependencyInstaller.InstallDependency(name, callback) end

InstallDependency = dependencyInstaller.InstallDependency