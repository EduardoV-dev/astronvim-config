-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  i = {
    ["kj"] = { "<esc>", desc = "Exit insert mode" },
    ["jj"] = false,
    -- setting a mapping to false will disable it
    ["jk"] = false,
    ["<C-h>"] = { "<C-W>", desc = "Simulate Ctrl + Backspace" }, -- <C-h> is the same as Ctrl+<BS>
    ["<C-Del>"] = { "<C-o>dw", desc = "Simulate Ctrl + Del" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["q"] = false,                                                   -- Disables the record mode in vim
    ["<leader>vs"] = { "<cmd>vsplit<cr>", desc = "Vertical split" }, -- Creates a virtual split for a selected file
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["kj"] = { "<C-\\><C-n>", desc = "Exit terminal insert mode" },
  },
  v = {
    ["q"] = false, -- Disables the record mode in vim
  },
}
