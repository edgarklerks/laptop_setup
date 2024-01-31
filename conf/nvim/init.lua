-- Function to load scripts, notifies the user something is amiss
local function loadScript(name)
        local lpath = vim.fn.stdpath("config") .. "/lscripts"
        local scriptPath = lpath .. "/" .. name .. ".lua"
        if not vim.fn.exists(scriptPath) then 
                vim.notify("Error script" .. name  .. " doesn't exist", vim.log.levels.ERROR, {})
        end
        vim.cmd("source " .. scriptPath)

end

-- Mapping leader before everything else 
loadScript("options")

-- Load plugins 
loadScript("lazy")
loadScript("load_plugins")

-- Changes notifications and load oil, whatever it id 
loadScript("notify")
require("oil").setup()
require("mason").setup()

-- Load the configurations of other plugins 
-- I don't know whether the order was important, so I let them be


loadScript("cmp")
-- One of setup calls are fine, don't need to be put in their own files yet
require("neodev").setup({})
require("gitsigns").setup()
loadScript("treesitter")
loadScript("lsp")
loadScript("telescope")
loadScript("neorg")
loadScript("haskell")
