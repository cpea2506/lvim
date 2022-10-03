function lvim:toggle_dev_mode()
    vim.env.LVIM_DEV_MODE = self.dev_mode or false
end

function lvim:set_options()
    if not self.options then
        return
    end

    for key, value in pairs(self.options) do
        vim.opt[key] = value
    end
end

function lvim:set_icons()
    local status_ok, icons = pcall(require, "nvim-web-devicons")
    local dev_icons = self.icons.dev

    if not status_ok or not dev_icons then
        return
    end

    icons.set_icon(dev_icons)
end

---reset cache before calling module
local function reset_cache()
    local status_ok, plenary = pcall(require, "plenary.reload")

    if not status_ok then
        return
    end

    plenary.reload_module "pea"
end

---Set lvim values with options in form of table
---@param opts table #options table
function lvim:set(opts)
    reset_cache()

    lvim = vim.tbl_deep_extend("force", self, opts)

    -- other stuffs
    lvim:set_options()
    lvim:set_icons()
    lvim:toggle_dev_mode()
end
