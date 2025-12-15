return {
  'mrcjkb/rustaceanvim',
  version = '^5', -- Note: Recommended version is currently ^5
  lazy = false, -- This plugin is already lazy via ftplugin, but lazy=false is fine
  init = function()
    -- It is suggested to disable built-in plugin components if necessary
    -- vim.g.rustaceanvim = {} -- optional
  end,
  opts = {
    server = {
      on_attach = function(client, bufnr)
        -- Add your keymaps here
      end,
      default_settings = {
        -- rust-analyzer language server configuration
        ['rust-analyzer'] = {},
      },
    },
    -- DAP configuration
    dap = {},
  },
  -- THIS IS THE CRITICAL PART
  config = function(_, opts)
    vim.g.rustaceanvim = opts
  end,
}
