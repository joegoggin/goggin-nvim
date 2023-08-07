local status_ok, indent = pcall(require, "indent_blackline")
if not status_ok then
    return
end

indent.setup()
