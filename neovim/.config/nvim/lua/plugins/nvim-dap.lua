return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'mfussenegger/nvim-dap-python',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-telescope/telescope-dap.nvim',
    'rcarriga/nvim-dap-ui',
  },
  keys = {
    { '<F5>',       ':lua require\'dap\'.continue()<CR>',                                               desc = 'Continue' },
    { '<F10>',      ':lua require\'dap\'.step_over()<CR>',                                              desc = 'Step over' },
    { '<F11>',      ':lua require\'dap\'.step_into()<CR>',                                              desc = 'Step into' },
    { '<F12>',      ':lua require\'dap\'.step_out()<CR>',                                               desc = 'Step out' },
    { '<leader>B',  ':lua require\'dap\'.toggle_breakpoint()<CR>',                                      desc = 'Toggle Breakpoint' },
    { '<leader>cB', ':lua require\'dap\'.set_breakpoint(vim.fn.input(\'Breakpoint condition: \'))<CR>', desc = 'Set condtional breakpoint' },
  },
  config = function()
    local ok, dap = pcall(require, 'dap')
    if not ok then
      return
    end

    dap.adapters.python = {
      type = 'executable',
      command = '~/.virtualenvs/debugpy/bin/python',
      args = { '-m', 'debugpy.adapter' },
    }

    local ok, nvimDapVirtualText = pcall(require, 'nvim-dap-virtual-text')
    if not ok then
      return
    end
    nvimDapVirtualText.setup({})

    local ok, dapPython = pcall(require, 'dap-python')
    if not ok then
      return
    end
    dapPython.setup('~/.virtualenvs/debugpy/bin/python')
  end
}
