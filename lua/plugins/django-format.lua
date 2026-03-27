return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.htmldjango = { "djlint" }
    opts.formatters = opts.formatters or {}
    opts.formatters.djlint = {
      args = { "--reformat", "--profile", "django", "-" },
    }
    return opts
  end,
}
