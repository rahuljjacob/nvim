require("conform").setup {
  event = { "BufReadPre" },
  formatters_by_ft = {
    lua = { "stylua" },
    -- python = { "ruff" },
    cpp = { "clang-format" },
    c = { "clang-format" },
    javascript = { "prettier" },
    typescript = { "prettier" },
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})
