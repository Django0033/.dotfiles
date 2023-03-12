return {
  'rcarriga/nvim-dap-ui',
  config = function()
    local ok, dapUI = pcall(require, 'dapui')
    if not ok then
      return
    end

    dapUI.setup()

    local dap = require('dap')
    dap.listeners.after.event_initialized['dapui_config'] = function()
      dapUI.open()
    end

    dap.listeners.after.event_terminated['dapui_config'] = function()
      dapUI.close()
    end

    dap.listeners.after.event_exited['dapui_config'] = function()
      dapUI.close()
    end
  end
}
