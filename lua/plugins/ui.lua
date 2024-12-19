return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function() 
      vim.cmd.colorscheme"gruvbox" 
    end,
  },
  {
    "echasnovski/mini.nvim",
    config = function()
      local statusline = require'mini.statusline'
      statusline.setup{use_icons=true}
    end,
  }
}
