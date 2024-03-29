return {
  'L3MON4D3/LuaSnip',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  event = 'InsertEnter',
  config = function()
    local status, luasnip = pcall(require, 'luasnip')
    if not status then return end
    local snippet = luasnip.snippet
    local text_node = luasnip.text_node
    local insert_node = luasnip.insert_node
    local format = require('luasnip.extras.fmt').fmt
    local rep = require('luasnip.extras').rep

    luasnip.config.set_config {
      history = true,
      updateevents = 'TextChanged, TextChangedI',
      enable_autosnippets = true,
    }

    require('luasnip.loaders.from_vscode').lazy_load()

    luasnip.add_snippets(
      'all', {
      snippet('expand', {
        text_node('-- this is what was expanded!'),
      }),
      -- luasnip.parser.parse_snippet('expand', '-- this is what was expanded!'),
      -- luasnip.parser.parse_snippet('pcall', 'pcall($1, $0)'),
    })
    luasnip.add_snippets(
      'lua', {
      snippet('pcall', format('pcall({}, {})', { insert_node(1, 'func'), insert_node(2, 'str') })),
      snippet('pcall_require', format('local ok, {} = pcall(require, \'{}\')\nif not ok then\n  return\nend', { insert_node(1, 'variableName'), insert_node(2, 'plugin') })),
      snippet('local', format('local {} = {}', { insert_node(1, 'variableName'), insert_node(2, ' variableDefinition') })),
    }
    )
    -- require('snippets')
    -- TODO: create independent files for each language
  end
}
