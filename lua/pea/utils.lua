function lvim:set_options()
    if not self.options then
        return
    end

    for key, value in pairs(self.options) do
        vim.opt[key] = value
    end
end

function lvim:set_icons()
    local dev_icons = self.icons.dev

    if not dev_icons then
        return
    end

    require("nvim-web-devicons").set_icon(dev_icons)
end

---Set lvim values with options in form of table
---@param opts table #options table
function lvim:set(opts)
    lvim = vim.tbl_deep_extend("force", self, opts)

    vim.env.LVIM_DEV_MODE = self.dev_mode or false

    lvim:set_options()
    lvim:set_icons()
end
