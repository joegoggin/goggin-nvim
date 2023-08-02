local ls_status_ok, ls = pcall(require, "live-server")
if not ls_status_ok then
    return
end

ls.setup()
