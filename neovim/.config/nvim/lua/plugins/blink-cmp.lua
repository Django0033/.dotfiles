return {
    {
        'saghen/blink.cmp',
        dependencies = {
            'rafamadriz/friendly-snippets'
        },

        version = 'v1.*',

        --@module 'blink.cmp'
        --@type blink.cmp.Config
        opts = {
            -- keymap = {preset = 'default'},
            keymap = {preset = 'super-tab'},

            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = 'mono'
            },

            completion = {
                documentation = {
                    auto_show = true
                },
            },

            sources = {
                default = {'lsp', 'path', 'snippets', 'buffer'},
            },

            fuzzy = {implementation = 'prefer_rust_with_warning'},

            signature = {enabled = true},
        }
    },
}
