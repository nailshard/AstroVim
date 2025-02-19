local M = {}

function M.config()
  local status_ok, lastplace = pcall(require, "nvim-lastplace")
  if not status_ok then
    return
  end

  lastplace.setup {
         -- Function to run after the scrolling animation ends
                lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
                lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
                lastplace_open_folds = true
  }
end

return M
