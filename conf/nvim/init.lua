local function loadScript(name)
        local lpath = vim.fn.stdpath("config") .. "/lscripts"
        local scriptPath = lpath .. "/" .. name .. ".lua"
        if not vim.fn.exists(scriptPath) then 
                vim.notify("Error script" .. name  .. " doesn't exist", vim.log.levels.ERROR, {})
        end
        vim.cmd("source " .. scriptPath)

end

vim.g.mapleader=","
vim.opt.termguicolors=true

loadScript("lazy")

loadScript("load_plugins")

require("oil").setup()

require("notify").setup({
  background_colour = "#000000",
})

vim.notify = require("notify")
require("mason").setup()


loadScript("cmp")
loadScript("options")

require("neodev").setup({})
require("gitsigns").setup()
loadScript("treesitter")

require("lspconfig").lua_ls.setup({
        settings = {
                Lua = {
                        diagnostics = {
                                globals = {'vim'}
                        },
                        workspace = {
                                library = vim.api.nvim_get_runtime_file("", true)
                        }
                }
        }
})

loadScript("telescope")
loadScript("neorg")
loadScript("haskell")
