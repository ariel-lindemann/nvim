return {
  "mhartington/formatter.nvim",
  config = function()
    require("formatter").setup({
      logging = true,
      log_level = vim.log.levels.WARN,
      -- All formatter configurations are opt-in
      filetype = {
        cpp = {
          function()
            return {
              exe = "clang-format",
              args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
              stdin = true,
            }
          end,
        },
        lua = {
          require("formatter.filetypes.lua").stylua,
          function()
            return {
              exe = "stylua",
              args = {
                "--indent-type",
                "Spaces",
                "--indent-width",
                "2",
                "--",
                "-",
              },
              stdin = true,
              "-", -- Reads from stdin and formats the output
            }
          end,
        },
        rust = {
          function()
            return {
              exe = "rustfmt",
              stdin = true,
            }
          end,
        },
      },
    })
  end,

  vim.keymap.set("n", "<leader>f", ":Format<CR>", { silent = true }),
  vim.keymap.set("n", "<leader>F", ":FormatWrite<CR>", { silent = true }),
}
