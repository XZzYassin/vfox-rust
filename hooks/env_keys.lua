--- Each SDK may have different environment variable configurations.
--- This allows plugins to define custom environment variables (including PATH settings)
--- Note: Be sure to distinguish between environment variable settings for different platforms!
--- @param ctx table Context information
--- @field ctx.path string SDK installation directory
function PLUGIN:EnvKeys(ctx)
    local mainPath = ctx.path

    return {
        {
            key = 'PATH',
            value = mainPath .. "/rustc/bin",
        },
        {
            key = 'PATH',
            value = mainPath .. "/cargo/bin",
        },
        {
            key = 'PATH',
            value = mainPath .. "/clippy-preview/bin",
        },
        {
            key = 'PATH',
            value = mainPath .. "/rust-analyzer-preview/bin",
        },
        {
            key = 'PATH',
            value = mainPath .. "/rustfmt-preview/bin",
        },
        {
            key = 'CARGO_HOME',
            value = mainPath .. '/cargo'
        }
    }
end