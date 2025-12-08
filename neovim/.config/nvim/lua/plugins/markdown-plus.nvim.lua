-- Plugin: YousefHadder/markdown-plus.nvim
-- Installed via store.nvim

return {
	"yousefhadder/markdown-plus.nvim",
	ft = "markdown",
	config = function()
		require("markdown-plus").setup({
			keymaps = {
				enabled = false,
			},
		})
	end,
	keys = {
		{ "<leader>mh+", "<Plug>(MarkdownPlusPromoteHeader)", desc = "Promote Header" },
		{ "<leader>mh-", "<Plug>(MarkdownPlusDemoteHeader)", desc = "Demote Header" },
		{ "<leader>mht", "<Plug>(MarkdownPlusGenerateTOC)", desc = "Generate TOC" },
		{ "<leader>mhu", "<Plug>(MarkdownPlusUpdateTOC)", desc = "Update TOC" },
		{ "<leader>mhT", "<Plug>(MarkdownPlusOpenTocWindow)", desc = "Open TOC window" },
		-- next_header = ']]',                 -- Jump to next header
		-- prev_header = '[[',                 -- Jump to previous header
		{ "<leader>mh1", "<Plug>(MarkdownPlusHeader1)", desc = "Set header level 1" },
		{ "<leader>mh2", "<Plug>(MarkdownPlusHeader2)", desc = "Set header level 2" },
		{ "<leader>mh3", "<Plug>(MarkdownPlusHeader3)", desc = "Set header level 3" },
		{ "<leader>mh4", "<Plug>(MarkdownPlusHeader4)", desc = "Set header level 4" },
		{ "<leader>mh5", "<Plug>(MarkdownPlusHeader5)", desc = "Set header level 5" },
		{ "<leader>mh6", "<Plug>(MarkdownPlusHeader6)", desc = "Set header level 6" },
		--
		-- List operations (Insert mode)
		-- auto_continue = '<CR>',             -- Auto-continue lists or split content
		-- continue_content = '<A-CR>',        -- Continue content on next line
		-- indent_list = '<Tab>',              -- Indent list item
		-- dedent_list = '<S-Tab>',            -- Dedent list item
		-- smart_backspace = '<BS>',           -- Smart backspace
		--
		-- List operations (Normal mode)
		-- new_item_below = 'o',               -- New list item below
		-- new_item_above = 'O',               -- New list item above
		{ "<leader>mr", "<Plug>(MarkdownPlusRenumberLists)", desc = "Renumber lists" },
		{ "<leader>mx", "<Plug>(MarkdownPlusToggleCheckbox)", desc = "Toggle checkbox" },
		{ "<leader>md", "<Plug>(MarkdownPlusDebugLists)", desc = "Debug list groups" },
		--
		-- List operations (Insert mode - checkbox)
		-- toggle_checkbox_insert = '<C-t>',   -- Toggle checkbox in insert mode

		-- Formatting operations (normal + visual)
		{ "<leader>mb", "<Plug>(MarkdownPlusBold)", desc = "Toggle bold" },
		{ "<leader>mi", "<Plug>(MarkdownPlusItalic)", desc = "Toggle italic" },
		{ "<leader>ms", "<Plug>(MarkdownPlusStrikethrough)", desc = "Toggle strikethrough" },
		{ "<leader>mc", "<Plug>(MarkdownPlusCode)", desc = "Toggle inline code" },
		{ "<leader>mw", "<Plug>(MarkdownPlusCodeBlock)", desc = "Convert to code block" },
		{ "<leader>mC", "<Plug>(MarkdownPlusClearFormatting)", desc = "Clear all formatting" },

		-- Link operations
		{ "<leader>ml", "<Plug>(MarkdownPlusInsertLink)", desc = "Insert new link" },
		{ "<leader>me", "<Plug>(MarkdownPlusEditLink)", desc = "Edit link under cursor" },
		{ "<leader>ma", "<Plug>(MarkdownPlusAutoLinkURL)", desc = "Auto-convert URL to link" },
		{ "<leader>mR", "<Plug>(MarkdownPlusConvertToReference)", desc = "Convert to reference-style" },
		{ "<leader>mI", "<Plug>(MarkdownPlusConvertToInline)", desc = "Convert to inline link" },
		-- follow_link = 'gd',                -- Follow TOC link
		-- open_link = 'gx',                  -- Open link in browser (native)

		-- Image operations
		{ "<leader>mL", "<Plug>(MarkdownPlusInsertImage)", desc = "Insert new image" },
		{ "<leader>mE", "<Plug>(MarkdownPlusEditImage)", desc = "Edit image under cursor" },
		{ "<leader>mA", "<Plug>(MarkdownPlusToggleImageLink)", desc = "Toggle link/image" },

		-- Quotes operations
		{ "<leader>mq", "<Plug>(MarkdownPlusToggleQuote)", desc = "Toggle blockquote" },

		-- Table operations (Normal mode)
		{ "<leader>mtc", "<Plug>(markdown-plus-table-create)", desc = "Create table" },
		{ "<leader>mtf", "<Plug>(markdown-plus-table-format)", desc = "Format table" },
		{ "<leader>mtn", "<Plug>(markdown-plus-table-normalize)", desc = "Normalize table" },
		{ "<leader>mtir", "<Plug>(markdown-plus-table-insert-row-below)", desc = "Insert row below" },
		{ "<leader>mtiR", "<Plug>(markdown-plus-table-insert-row-above)", desc = "Insert row above" },
		{ "<leader>mtdr", "<Plug>(markdown-plus-table-delete-row)", desc = "Delete row" },
		{ "<leader>mtyr", "<Plug>(markdown-plus-table-duplicate-row)", desc = "Duplicate row" },
		{ "<leader>mtic", "<Plug>(markdown-plus-table-insert-column-right)", desc = "Insert column right" },
		{ "<leader>mtiC", "<Plug>(markdown-plus-table-insert-column-left)", desc = "Insert column left" },
		{ "<leader>mtdc", "<Plug>(markdown-plus-table-delete-column)", desc = "Delete column" },
		{ "<leader>mtyc", "<Plug>(markdown-plus-table-duplicate-column)", desc = "Duplicate column" },
		{ "<leader>mta", "<Plug>(markdown-plus-table-toggle-cell-alignment)", desc = "Toggle cell alignment" },
		{ "<leader>mtx", "<Plug>(markdown-plus-table-clear-cell)", desc = "Clear cell" },
		{ "<leader>mtmh", "<Plug>(markdown-plus-table-move-column-left)", desc = "Move column left" },
		{ "<leader>mtml", "<Plug>(markdown-plus-table-move-column-right)", desc = "Move column right" },
		{ "<leader>mtmk", "<Plug>(markdown-plus-table-move-row-up)", desc = "Move row up" },
		{ "<leader>mtmj", "<Plug>(markdown-plus-table-move-row-down)", desc = "Move row down" },
		{ "<leader>mtt", "<Plug>(markdown-plus-table-transpose)", desc = "Transpose table" },
		{ "<leader>mtsa", "<Plug>(markdown-plus-table-sort-ascending)", desc = "Sort ascending" },
		{ "<leader>mtsd", "<Plug>(markdown-plus-table-sort-descending)", desc = "Sort descending" },
		{ "<leader>mtvx", "<Plug>(markdown-plus-table-to-csv)", desc = "To CSV" },
		{ "<leader>mtvi", "<Plug>(markdown-plus-table-from-csv)", desc = "From CSV" },

		-- Table operations (Insert mode)
		-- table_move_left = '<A-h>',         -- Move to cell left (wraps)
		-- table_move_right = '<A-l>',        -- Move to cell right (wraps)
		-- table_move_down = '<A-j>',         -- Move to cell down (wraps)
		-- table_move_up = '<A-k>',           -- Move to cell up (wraps)

		-- Footnotes operations (Normal mode)
		{ "<leader>mfi", "<Plug>(MarkdownPlusFootnoteInsert)", desc = "Insert new footnote" },
		{ "<leader>mfe", "<Plug>(MarkdownPlusFootnoteEdit)", desc = "Edit footnote definition" },
		{ "<leader>mfd", "<Plug>(MarkdownPlusFootnoteDelete)", desc = "Delete footnote" },
		{ "<leader>mfg", "<Plug>(MarkdownPlusFootnoteGotoDefinition)", desc = "Go to definition" },
		{ "<leader>mfr", "<Plug>(MarkdownPlusFootnoteGotoReference)", desc = "Go to reference" },
		{ "<leader>mfn", "<Plug>(MarkdownPlusFootnoteNext)", desc = "Next footnote" },
		{ "<leader>mfp", "<Plug>(MarkdownPlusFootnotePrev)", desc = "Previous footnote" },
		{ "<leader>mfl", "<Plug>(MarkdownPlusFootnoteList)", desc = "List all footnotes" },
	},
}

