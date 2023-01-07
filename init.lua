require("base")
require("maps")
require("colour")
require("plugins")
require("lsp.mason")
require("lsp.setup")
require("plugin_setup")
require("DAP.setup")

_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}
require('impatient')
require('leap').add_default_mappings()
