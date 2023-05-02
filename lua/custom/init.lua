local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd("FileType", {
    pattern = "*",
    callback = function()
        opt.tabstop = 2
        opt.shiftwidth = 2
    end,
})

autocmd("FileType", {
  pattern = "php",
  callback = function()
    opt.tabstop = 4
    opt.shiftwidth = 4
  end,
})

