-- lazy.nvim
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
  },
  opts = function()
    lsp = {
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
      },
    }
    presets = {
      bottom_search = false, -- use a classic bottom cmdline for search
      command_palette = false, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = true, -- add a border to hover docs and signature help
    } -- add any options here
    -- views = {
    --   cmdline_popup = {
    --     position = {
    --       row = '50%',
    --       col = '50%',
    --     },
    --     size = {
    --       width = 60,
    --       height = 'auto',
    --     },
    --   },
    --   popupmenu = {
    --     relative = 'editor',
    --     position = {
    --       row = '70%',
    --       col = '50%',
    --     },
    --     size = {
    --       width = 60,
    --       height = 10,
    --     },
    --     border = {
    --       style = 'rounded',
    --       padding = { 0, 1 },
    --     },
    --     win_options = {
    --       winhighlight = { Normal = 'Normal', FloatBorder = 'DiagnosticInfo' },
    --     },
    --   },
    -- },
    routes = {
      --   { filter = {
      --     event = 'msg_show',
      --     kind = '',
      --     find = ':bnext',
      --   }, opts = { skip = true } },
      --   { filter = {
      --     event = 'msg_show',
      --     kind = '',
      --     find = ':bprevious',
      --   }, opts = { skip = true } },
    }
    require('telescope').load_extension 'noice'
  end,
}
