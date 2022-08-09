function lvim:toggle_dev_mode()
    vim.env.LVIM_DEV_MODE = self.dev_mode
end

function lvim:set_options()
    for key, value in pairs(self.options) do
        vim.opt[key] = value
    end
end

function lvim:set_icons()
    local status_ok, icons = pcall(require, "nvim-web-devicons")

    if not status_ok then
        return
    end

    icons.set_icon(self.builtin.icons)
end

function lvim:extend(opts)
    lvim = vim.tbl_deep_extend("force", self, opts)
end
