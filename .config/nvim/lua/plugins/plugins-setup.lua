local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- 主题
    "folke/tokyonight.nvim",
    -- 状态栏美化
    {
    'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- 文档树
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
    },
    -- 语法高亮
    {
      "nvim-treesitter/nvim-treesitter",
      "HiPhish/nvim-ts-rainbow2"
    },
    -- 代码提示
    {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig"
    },
    -- 自动补全
    {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "hrsh7th/cmp-path", -- 文件路径
      "hrsh7th/cmp-buffer",
    },
    -- 括号自动匹配|注释
    {
      "numToStr/Comment.nvim",
      "windwp/nvim-autopairs",
    },
    -- 上方标签栏
    {
      "akinsho/bufferline.nvim", -- buffer分割线
      "lewis6991/gitsigns.nvim",
      "moll/vim-bbye"
    },
    -- 文件检索
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.6', -- 文件检索
      dependencies = { {'nvim-lua/plenary.nvim'} }, -- requires要改为dependencies
      "Burntsushi/ripgrep"
    },

})

