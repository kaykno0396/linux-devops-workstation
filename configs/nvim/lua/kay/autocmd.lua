-- Neovim autocommands

local group = vim.api.nvim_create_augroup(
    "KayDevOpsConfig",
    { clear = true }
)

-- Highlight copied text briefly
vim.api.nvim_create_autocmd("TextYankPost", {
    group = group,
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 150,
        })
    end,
    desc = "Highlight text after yanking",
})

-- Return to the last cursor position when reopening a file
vim.api.nvim_create_autocmd("BufReadPost", {
    group = group,
    callback = function(args)
        local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
        local line_count = vim.api.nvim_buf_line_count(args.buf)

        if mark[1] > 0 and mark[1] <= line_count then
            pcall(
                vim.api.nvim_win_set_cursor,
                0,
                mark
            )
        end
    end,
    desc = "Restore last cursor position",
})

-- Use two-space indentation for common structured-data formats
vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = {
        "json",
        "jsonc",
        "yaml",
        "markdown",
    },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.softtabstop = 2
    end,
    desc = "Use two-space indentation for structured data",
})
