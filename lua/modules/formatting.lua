require("conform").setup({
  event = {"BufReadPre"},
  formatters_by_ft = {
    lua = {"stylua"},
    -- Conform will run multiple formatters sequentially
    python = {},
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = {},
    -- Conform will run the first available formatter
    cpp = {"clang-format"},
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})