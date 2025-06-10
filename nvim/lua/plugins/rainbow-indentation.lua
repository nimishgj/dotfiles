return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = function(_, opts)
    return require("indent-rainbowline").make_opts(opts, {
      color_transparency = 0.2,
    })
  end,
  dependencies = {
    "TheGLander/indent-rainbowline.nvim",
  },
}
