local map = vim.keymap.set
local set = vim.opt
local defaults = { noremap = true, silent = true}

set.termguicolors = true

vim.keymap.set("n", "<F5>", function() for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        local buftype = vim.api.nvim_buf_get_option(buf, "buftype")
        if buftype == "terminal" then
            vim.api.nvim_win_close(win, true)
        end
    end

    vim.cmd("w")
    vim.cmd("botright split")
    vim.cmd("resize 10")
    vim.cmd("terminal python " .. vim.fn.expand("%"))
end, { noremap = true })

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

--Buffer Change 
map('n', "<Tab>", ":BufferLineCycleNext<CR>", defaults)
map('n', "<S-Tab>", ":BufferLineCyclePrev<CR>", defaults)

--Telescope (lazy-load)
map("n", "<leader>ff", function() require("telescope.builtin").find_files() end, {})
map("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, {})
map("n", "<leader>fh", function() require("telescope.builtin").buffers() end, {})

---- Normal mode
map('n', '<Leader>w', ':write<CR>')
map('n', '<Leader>a', ':wqa<CR>')
map('n', '<Leader>x', ':wq<CR>')

-- Insert empty line without entering insert mode
map('n', '<leader>o', ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', defaults)
map('n', '<leader>O', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', defaults)

-- Keymaps for Nvim tree
map('n', '<leader>e', ':Neotree toggle<cr>', defaults)

-- Keymaps for Compiler
-- Open compiler
-- Toggle compiler results
map('n', '<leader>c', "<cmd>w | <cmd>CompilerOpen<CR>", defaults)
map('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", defaults)

-- Redo last selected option
map('n', '<S-F6>',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })


-- Go Config
map('n', '<leader>co', ":tabnew | :Neotree filesystem reveal right dir=" .. vim.fn.fnamemodify(vim.env.MYVIMRC, ":h") .. "<CR>")
