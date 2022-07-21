local status_ok, icons = pcall(require, "nvim-web-devicons")

if not status_ok then
    return
end

icons.set_icon {
    ["docker-compose.yml"] = {
        icon = "",
        color = "#00a4ff",
        name = "Dockerfile",
    },
    [".dockerignore"] = {
        icon = "",
        color = "#00a4ff",
        name = "Dockerfile",
    },
    ["Dockerfile"] = {
        icon = "",
        color = "#00a4ff",
        name = "Dockerfile",
    },
    [".gitignore"] = {
        icon = "",
        color = "#aaeaff",
        name = "GitIgnore",
    },
    [".gitmodules"] = {
        icon = "",
        color = "#aaeaff",
        name = "GitModules",
    },
    ["js"] = {
        icon = "",
        color = "#e7d54c",
        name = "Js",
    },
    ["json"] = {
        icon = "ﬥ",
        color = "#cbcb41",
        name = "Json",
    },
    ["lua"] = {
        icon = "",
        color = "#42a5f5",
        name = "Lua",
    },
    [".luacheckrc"] = {
        icon = "",
        color = "#42a5f5",
        name = "Lua",
    },
    ["rs"] = {
        icon = "",
        color = "#ee7950",
        name = "Rust",
    },
    ["toml"] = {
        icon = "[T]",
        color = "#ffffff",
        name = "Toml",
    },
    ["ts"] = {
        icon = "ﯤ",
        color = "#3178c6",
        name = "Ts",
    },
    ["xml"] = {
        icon = "",
        color = "#98c15c",
        name = "Xml",
    },
    ["yaml"] = {
        icon = "",
        color = "#ff5252",
        name = "Yaml",
    },
    ["yml"] = {
        icon = "",
        color = "#ff5252",
        name = "Yaml",
    },
    ["Makefile"] = {
        icon = "M",
        color = "#e3833e",
        name = "Makefile",
    },
}
