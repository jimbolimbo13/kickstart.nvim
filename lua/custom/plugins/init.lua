-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'echasnovski/mini.pick', -- optional
    },
    config = function()
      vim.keymap.set('n', '<leader>gg', require('neogit').open, { desc = '[G]it in neo[G]it dashboard' })
    end,
  },
  'yorickpeterse/vim-paper',
  {
    'kelly-lin/ranger.nvim',
    config = function()
      require('ranger-nvim').setup { replace_netrw = true, enable_cmds = true }
      vim.api.nvim_set_keymap('n', '<leader>.', '', {
        noremap = true,
        callback = function()
          require('ranger-nvim').open(true)
        end,
      })
      vim.api.nvim_set_keymap('n', '<leader>ef', '', {
        noremap = true,
        callback = function()
          require('ranger-nvim').open(false)
        end,
      })
    end,
  },
}
