return function()
    local status_ok, semantic_tokens = pcall(require, "nvim-semantic-tokens")

    if not status_ok then
        return
    end

    semantic_tokens.setup {}
end
