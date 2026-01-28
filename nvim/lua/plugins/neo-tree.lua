return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem = opts.filesystem or {}
    opts.filesystem.filtered_items = opts.filesystem.filtered_items or {}
    
    opts.filesystem.filtered_items.visible = false
    opts.filesystem.filtered_items.hide_dotfiles = false
    opts.filesystem.filtered_items.hide_gitignored = true
    opts.filesystem.filtered_items.hide_by_name = opts.filesystem.filtered_items.hide_by_name or {}
    table.insert(opts.filesystem.filtered_items.hide_by_name, ".git")
  end,
}
