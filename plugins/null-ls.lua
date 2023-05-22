local null_ls = require "null-ls"

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.handlers = {
      prettier = function()
        require("null-ls").register(require("null-ls").builtins.formatting.prettier.with {
          condition = function(utils)
            return utils.root_has_file "package.json"
              or utils.root_has_file ".prettierrc"
              or utils.root_has_file ".prettierrc.json"
              or utils.root_has_file ".prettierrc.js"
          end,
        })
      end,
      -- for prettierd
      prettierd = function()
        require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with {
          condition = function(utils)
            return utils.root_has_file "package.json"
              or utils.root_has_file ".prettierrc"
              or utils.root_has_file ".prettierrc.json"
              or utils.root_has_file ".prettierrc.js"
          end,
        })
      end,
      -- For eslint_d:
      eslint_d = function()
        require("null-ls").register(require("null-ls").builtins.diagnostics.eslint_d.with {
          condition = function(utils)
            return utils.root_has_file "package.json"
              or utils.root_has_file ".eslintrc.json"
              or utils.root_has_file ".eslintrc.js"
          end,
        })
      end,
    }

    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      -- null_ls.builtins.formatting.prettier.with {
      --   extra_args = {
      --     "--allow-parens always",
      --     "--no-bracket-same-line",
      --     "--bracket-spacing",
      --     "--end-of-line auto",
      --     "--no-jsx-single-quote",
      --     "--no-single-attribute-per-line",
      --     "--print-width 100",
      --     "--semi",
      --     "--single-quote",
      --     "--tab-width 4",
      --     "--trailing-comma all",
      --   },
      -- },
    }
    return config -- return final config table
  end,
}
