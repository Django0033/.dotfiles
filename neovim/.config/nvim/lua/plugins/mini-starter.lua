return {
    'nvim-mini/mini.starter',
    version = false,

    opts = {},
    config = function ()
        local function header()
            return [[
            ███╗   ██╗██╗   ██╗███╗   ███╗███╗   ███╗
            ████╗  ██║██║   ██║████╗ ████║████╗ ████║
            ██╔██╗ ██║██║   ██║██╔████╔██║██╔████╔██║
            ██║╚██╗██║╚██╗ ██╔╝██║╚██╔╝██║██║╚██╔╝██║
            ██║ ╚████║ ╚████╔╝ ██║ ╚═╝ ██║██║ ╚═╝ ██║
            ╚═╝  ╚═══╝  ╚═══╝  ╚═╝     ╚═╝╚═╝     ╚═╝ 

        ]]
        end

        local ok, starter = pcall(require, 'mini.starter')

        starter.setup({
            evaluate_single = true,
            header = header,

            items = {
                starter.sections.builtin_actions(),
                starter.sections.recent_files(10, false),
                starter.sections.recent_files(10, true),
                -- Use this if you set up 'mini.sessions'
                -- starter.sections.sessions(5, true)
            },

            content_hooks = {
                starter.gen_hook.adding_bullet(),
                starter.gen_hook.indexing('all', { 'Builtin actions' }),
                starter.gen_hook.aligning('center','center')
            },
        })
    end
}
