return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Displays the hidden files by default
      },
    },
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
