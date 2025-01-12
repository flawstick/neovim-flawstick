-- formatter.lua
require('formatter').setup({
  filetype = {
    lua = {
      -- Prettier for Lua
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    javascript = {
      -- Prettier for JavaScript
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    javascriptreact = {
      -- Prettier for JSX
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    typescript = {
      -- Prettier for TypeScript
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    typescriptreact = {
      -- Prettier for TSX
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    html = {
      -- Prettier for HTML
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    css = {
      -- Prettier for CSS
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    scss = {
      -- Prettier for SCSS
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    json = {
      -- Prettier for JSON
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    markdown = {
      -- Prettier for Markdown
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", '"' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) .. '"'},
          stdin = true
        }
      end
    },
    cpp = {
      -- Clang-Format for C++
      function()
        return {
          exe = "clang-format",
          args = {"--assume-filename", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = true,
          cwd = vim.fn.expand('%:p:h') -- Run clang-format in cwd of the file.
        }
      end
    }
  }
})

-- Keybinding for manual formatting
vim.api.nvim_set_keymap('n', '=', ':Format<CR>', { noremap = true, silent = true })

-- Auto format on save
vim.api.nvim_create_augroup("FormatAutogroup", {})
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = {"*.js", "*.jsx", "*.ts", "*.tsx", "*.css", "*.scss", "*.html", "*.json", "*.cpp", "*.md", "*.py", "*.h", "*.hpp"},
  group = "FormatAutogroup",
  callback = function()
    vim.cmd("FormatWrite")
  end
})

