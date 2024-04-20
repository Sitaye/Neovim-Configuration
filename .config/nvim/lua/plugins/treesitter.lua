require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "cpp", "python", "java", "markdown", "xml", "yaml", "json" },
  highlight = { enable = true },
  indent = { enable = true },

 rainbow = {
    enable = true,
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    strategy = require('ts-rainbow').strategy.global,
 }
}
