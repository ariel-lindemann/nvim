return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").install({
      "cpp",
      "python",
      "haskell",
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
    })
  end,
}
