return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "cpp",
        "css",
        "dockerfile",
        "go",
        "graphql",
        "haskell",
        "html",
        "javascript",
        "json",
        "llvm",
        "lua",
        "nix",
        "ocaml",
        "ocaml_interface",
        "python",
        "ruby",
        "rust",
        "sql",
        "svelte",
        "templ",
        "toml",
        "tsx",
        "typescript",
        "yaml",
        "zig",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
