local dap = require('dap')
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = 'C:\\Users\\zs987\\AppData\\Local\\nvim-data\\mason\\packages\\cpptools\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe',
    options = {
    detached = false
  }
}
dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "\\", "file")
        end,

        cwd = "${workspaceFolder}",
        stopAtEntry = true,
    },
}
dap.configurations.c = dap.configurations.cpp
