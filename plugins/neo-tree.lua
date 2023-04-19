return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 30,
      mappings = {
        ["<S-h>"] = "prev_source",
        ["<S-l>"] = "next_source",
        ["."] = "toggle_hidden",
      },
    },
  },
}
