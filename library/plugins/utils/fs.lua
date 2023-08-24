---@meta

---@class fs
fs = {}

-- Shared

function fs.Exists(path)end
function fs.Move(from, to)end

-- Folders

function fs.CreateFolder(path)end
function fs.DeleteFolder(path)end

-- Files

function fs.Delete(path)end

-- Paths

function fs.RelativePath(path)end
function fs.ConcatenatePaths(path1, path2)end

-- Tar Utilities

function fs.Untar(path)end
function fs.UntarAndDelete(path)end
function fs.GetTarFolderName(path)end

-- Zip Utilities

function fs.Unzip(path)end
function fs.UnzipAndDelete(path)end
function fs.GetZipFolderName(path)end

-- Downloads

function fs.Download(url, outputPath, silent)end

Exists = fs.Exists
Move = fs.Move
CreateFolder = fs.CreateFolder
DeleteFolder = fs.DeleteFolder
Delete = fs.Delete
RelativePath = fs.RelativePath
ConcatenatePaths = fs.ConcatenatePaths
Untar = fs.Untar
UntarAndDelete = fs.UntarAndDelete
GetTarFolderName = fs.GetTarFolderName
Unzip = fs.Unzip
UnzipAndDelete = fs.UnzipAndDelete
GetZipFolderName = fs.GetZipFolderName