local actions = require("telescope.actions")

function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["exc"] = actions.close
      }
    }
  },
  layout_config = {
    horizontal = {
      preview_cutoff = 10,
      preview_width = 0.6
        }
    },
  extensions = {
        file_browser = {
            theme = 'tokyonight',
            hijack_netrw = true,
            mappings = {
                ['i'] = {
                    ['<C-w>'] = function () vim.cmd('normal vbd') end,
                },
                ['n'] = {
                    ['h'] = fb_actions.goto_parent_dir,
                    ['/'] = function()
                        vim.cmd('startinsert')
                    end
                }
            }
        }
  }
}

require('telescope').load_extension('file_browser')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<leader>fb', '<cmd>lua require("telescope").extensions.file_browser.file_browser({path="%:p:h", cwd=telescope_buffer_dir(), respect_git_ignore=false, hidden=true})<CR>', opts)
