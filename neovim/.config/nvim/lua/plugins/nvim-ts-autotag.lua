return {
  "windwp/nvim-ts-autotag",
  config = function ()
    local ok, ts_autotag = pcall(require, 'nvim-ts-autotag')
    if not ok then
      return
    end
    ts_autotag.setup()
    vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      {
        underline = true,
        virtual_text = {
          spacing = 5,
          severity_limit = 'Warning',
        },
        update_in_insert = true,
      }
    )
  end
}
