return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config('clangd', {
        cmd = { 'clangd' },
        filetypes = { 'c', 'lua' },
    })

    vim.lsp.enable({ 'clangd' })

    vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

    vim.o.autocomplete = true

    vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(ev)
            local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
            if client:supports_method('textDocument/completion') then
                vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
            end
        end,
    })

    vim.opt.complete:append('o')
    vim.opt.completeopt = { 'menuone', 'noselect' }
    vim.o.pumheight = 5
    vim.o.pumborder = 'rounded'

    vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
            vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "PmenuSel", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "NONE" })
        end,
    })

    vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "NONE" })

    vim.keymap.set("i", "<Tab>", function()
        if vim.fn.pumvisible() == 1 then
            return "<C-n>"
        else
            return "<Tab>"
        end
    end, { expr = true })

    vim.keymap.set("i", "<S-Tab>", function()
        if vim.fn.pumvisible() == 1 then
            return "<C-p>"
        else
            return "<S-Tab>"
        end
    end, { expr = true })
  end,
}
