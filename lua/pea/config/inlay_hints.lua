return function()
    local status_ok, inlay_hints = pcall(require, "inlay-hints")

    if not status_ok then
        print "cannot find inlay-hints module"
        return
    end

    inlay_hints.setup()
end
