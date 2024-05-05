 require'lspconfig'.tsserver.setup{
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
        languages = {"javascript", "typescript", "vue"},
      },
    },
  },
  filetypes = {
    "javascript",
    "typescript",
	"javascriptreact",
	"typescriptreact",
	"javascript.jsx",
	"typescript.tsx",
    "vue",
  },
}

-- You must make sure volar is setup
-- e.g. require'lspconfig'.volar.setup{}
-- See volar's section for more information
