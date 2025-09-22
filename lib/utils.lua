require("constants")
local io = require("io")

local utils = {}

function utils:getPrebuiltVersionUrl(osType, archType, version)
    osType = osType:lower()
    archType = archType:lower()

    -- switch to find the correct osType
    if osType == "windows" then
        osType = "pc-windows-msvc"
    elseif osType == "linux" then
        osType = "unknown-linux-gnu"
    elseif osType == "macos" then
        osType = "apple-darwin"
    elseif osType == "freebsd" then
        osType = "unknown-freebsd"
    elseif osType == "netbsd" then
        osType = "unknown-netbsd"
    end

    -- switch to find the correct archType
    if archType == "x64" or archType == "amd64" then
        archType = "x86_64"
    elseif archType == "x86" or archType == "amd" then
        archType = "i686"
    elseif archType == "arm64" then
        archType = "aarch64"
    end

    local url = RUST_URL .. "/rust-" .. version .. "-" .. archType .. "-" .. osType .. ".tar.gz"

    return url
end

return utils
