local utils = require("utils")

--- Returns some pre-installed information, such as version number, download address, local files, etc.
--- If checksum is provided, vfox will automatically check it for you.
--- @param ctx table
--- @field ctx.version string User-input version
--- @return table Version information
function PLUGIN:PreInstall(ctx)
    local version = ctx.version
    local osType = RUNTIME.osType:lower()
    local archType = RUNTIME.archType:lower()

    if not version then
        error("Version is required")
    end

    local url = utils:getPrebuiltVersionUrl(osType, archType, version)

    return {
        version = version,
        url = url,
    }
end