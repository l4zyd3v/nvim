local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "ziethh.plugins" }, { import = "ziethh.plugins.lsp" } }, {
  install = {
    colorscheme = { "rose-pine" },
  },
  checker = { -- check for update, but do not notify me
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
