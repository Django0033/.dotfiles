-- Plugin: YousefHadder/markdown-plus.nvimh
-- Installed via store.nvim

return {
	"yousefhadder/markdown-plus.nvim",
	lazy = true,
	ft = "markdown",
	config = function()
		require("markdown-plus").setup({
			keymaps = {
				enabled = false,
			},
			toc = {
				initial_depth = 4, -- Show H1-H3 initially
			},
		})
		vim.keymap.set("n", "<leader>mh+", "<Plug>(MarkdownPlusPromoteHeader)", { desc = "Promote Header" })
		vim.keymap.set("n", "<leader>mh-", "<Plug>(MarkdownPlusDemoteHeader)", { desc = "Demote Header" })
		vim.keymap.set("n", "<leader>mht", "<Plug>(MarkdownPlusGenerateTOC)", { desc = "Generate TOC" })
		vim.keymap.set("n", "<leader>mhu", "<Plug>(MarkdownPlusUpdateTOC)", { desc = "Update TOC" })
		vim.keymap.set("n", "<leader>mhT", "<Plug>(MarkdownPlusOpenTocWindow)", { desc = "Open TOC window" })
		-- next_header = ']]',                 -- Jump to next header
		-- prev_header = '[[',                 -- Jump to previous header
		vim.keymap.set("n", "<leader>mh1", "<Plug>(MarkdownPlusHeader1)", { desc = "Set header level 1" })
		vim.keymap.set("n", "<leader>mh2", "<Plug>(MarkdownPlusHeader2)", { desc = "Set header level 2" })
		vim.keymap.set("n", "<leader>mh3", "<Plug>(MarkdownPlusHeader3)", { desc = "Set header level 3" })
		vim.keymap.set("n", "<leader>mh4", "<Plug>(MarkdownPlusHeader4)", { desc = "Set header level 4" })
		vim.keymap.set("n", "<leader>mh5", "<Plug>(MarkdownPlusHeader5)", { desc = "Set header level 5" })
		vim.keymap.set("n", "<leader>mh6", "<Plug>(MarkdownPlusHeader6)", { desc = "Set header level 6" })

		-- List operations (Insert mode)
		vim.keymap.set("i", "<cr>", "<Plug>(MarkdownPlusListEnter)", { desc = "Auto-continue list" })
		-- auto_continue = '<CR>',             -- Auto-continue lists or split content
		-- continue_content = '<A-CR>',        -- Continue content on next line
		-- indent_list = '<Tab>',              -- Indent list item
		-- dedent_list = '<S-Tab>',            -- Dedent list item
		-- smart_backspace = '<BS>',           -- Smart backspace

		-- List operations (Normal mode)
		-- new_item_below = 'o',               -- New list item below
		-- new_item_above = 'O',               -- New list item above
		vim.keymap.set("n", "<leader>mr", "<Plug>(MarkdownPlusRenumberLists)", { desc = "Renumber lists" })
		vim.keymap.set("n", "<leader>mx", "<Plug>(MarkdownPlusToggleCheckbox)", { desc = "Toggle checkbox" })
		vim.keymap.set("n", "<leader>md", "<Plug>(MarkdownPlusDebugLists)", { desc = "Debug list groups" })

		-- List operations (Insert mode - checkbox)
		-- toggle_checkbox_insert = '<C-t>',   -- Toggle checkbox in insert mode

		-- Formatting operations (normal + visual)
		vim.keymap.set({ "n", "x" }, "<leader>mb", "<Plug>(MarkdownPlusBold)", { desc = "Toggle bold" })
		vim.keymap.set({ "n", "x" }, "<leader>mi", "<Plug>(MarkdownPlusItalic)", { desc = "Toggle italic" })
		vim.keymap.set(
			{ "n", "x" },
			"<leader>ms",
			"<Plug>(MarkdownPlusStrikethrough)",
			{ desc = "Toggle strikethrough" }
		)
		vim.keymap.set({ "n", "x" }, "<leader>mc", "<Plug>(MarkdownPlusCode)", { desc = "Toggle inline code" })
		vim.keymap.set({ "n", "x" }, "<leader>mw", "<Plug>(MarkdownPlusCodeBlock)", { desc = "Convert to code block" })
		vim.keymap.set(
			{ "n", "x" },
			"<leader>mC",
			"<Plug>(MarkdownPlusClearFormatting)",
			{ desc = "Clear all formatting" }
		)

		-- Link operations
		vim.keymap.set("n", "<leader>ml", "<Plug>(MarkdownPlusInsertLink)", { desc = "Insert new link" })
		vim.keymap.set("n", "<leader>me", "<Plug>(MarkdownPlusEditLink)", { desc = "Edit link under cursor" })
		vim.keymap.set("n", "<leader>ma", "<Plug>(MarkdownPlusAutoLinkURL)", { desc = "Auto-convert URL to link" })
		vim.keymap.set(
			"n",
			"<leader>mR",
			"<Plug>(MarkdownPlusConvertToReference)",
			{ desc = "Convert to reference-style" }
		)
		vim.keymap.set("n", "<leader>mI", "<Plug>(MarkdownPlusConvertToInline)", { desc = "Convert to inline link" })
		-- follow_link = 'gd',                -- Follow TOC link
		-- open_link = 'gx',                  -- Open link in browser (native)

		-- Image operations
		vim.keymap.set("n", "<leader>mL", "<Plug>(MarkdownPlusInsertImage)", { desc = "Insert new image" })
		vim.keymap.set("n", "<leader>mE", "<Plug>(MarkdownPlusEditImage)", { desc = "Edit image under cursor" })
		vim.keymap.set("n", "<leader>mA", "<Plug>(MarkdownPlusToggleImageLink)", { desc = "Toggle link/image" })

		-- Quotes operations
		vim.keymap.set("n", "<leader>mq", "<Plug>(MarkdownPlusToggleQuote)", { desc = "Toggle blockquote" })

		-- Table operations (Normal mode)
		vim.keymap.set("n", "<leader>mtc", "<Plug>(markdown-plus-table-create)", { desc = "Create table" })
		vim.keymap.set("n", "<leader>mtf", "<Plug>(markdown-plus-table-format)", { desc = "Format table" })
		vim.keymap.set("n", "<leader>mtn", "<Plug>(markdown-plus-table-normalize)", { desc = "Normalize table" })
		vim.keymap.set(
			"n",
			"<leader>mtir",
			"<Plug>(markdown-plus-table-insert-row-below)",
			{ desc = "Insert row below" }
		)
		vim.keymap.set(
			"n",
			"<leader>mtiR",
			"<Plug>(markdown-plus-table-insert-row-above)",
			{ desc = "Insert row above" }
		)
		vim.keymap.set("n", "<leader>mtdr", "<Plug>(markdown-plus-table-delete-row)", { desc = "Delete row" })
		vim.keymap.set("n", "<leader>mtyr", "<Plug>(markdown-plus-table-duplicate-row)", { desc = "Duplicate row" })
		vim.keymap.set(
			"n",
			"<leader>mtic",
			"<Plug>(markdown-plus-table-insert-column-right)",
			{ desc = "Insert column right" }
		)
		vim.keymap.set(
			"n",
			"<leader>mtiC",
			"<Plug>(markdown-plus-table-insert-column-left)",
			{ desc = "Insert column left" }
		)
		vim.keymap.set("n", "<leader>mtdc", "<Plug>(markdown-plus-table-delete-column)", { desc = "Delete column" })
		vim.keymap.set(
			"n",
			"<leader>mtyc",
			"<Plug>(markdown-plus-table-duplicate-column)",
			{ desc = "Duplicate column" }
		)
		vim.keymap.set(
			"n",
			"<leader>mta",
			"<Plug>(markdown-plus-table-toggle-cell-alignment)",
			{ desc = "Toggle cell alignment" }
		)
		vim.keymap.set("n", "<leader>mtx", "<Plug>(markdown-plus-table-clear-cell)", { desc = "Clear cell" })
		vim.keymap.set(
			"n",
			"<leader>mtmh",
			"<Plug>(markdown-plus-table-move-column-left)",
			{ desc = "Move column left" }
		)
		vim.keymap.set(
			"n",
			"<leader>mtml",
			"<Plug>(markdown-plus-table-move-column-right)",
			{ desc = "Move column right" }
		)
		vim.keymap.set("n", "<leader>mtmk", "<Plug>(markdown-plus-table-move-row-up)", { desc = "Move row up" })
		vim.keymap.set("n", "<leader>mtmj", "<Plug>(markdown-plus-table-move-row-down)", { desc = "Move row down" })
		vim.keymap.set("n", "<leader>mtt", "<Plug>(markdown-plus-table-transpose)", { desc = "Transpose table" })
		vim.keymap.set("n", "<leader>mtsa", "<Plug>(markdown-plus-table-sort-ascending)", { desc = "Sort ascending" })
		vim.keymap.set("n", "<leader>mtsd", "<Plug>(markdown-plus-table-sort-descending)", { desc = "Sort descending" })
		vim.keymap.set("n", "<leader>mtvx", "<Plug>(markdown-plus-table-to-csv)", { desc = "To CSV" })
		vim.keymap.set("n", "<leader>mtvi", "<Plug>(markdown-plus-table-from-csv)", { desc = "From CSV" })

		-- Table operations (Insert mode)
		-- table_move_left = '<A-h>',         -- Move to cell left (wraps)
		-- table_move_right = '<A-l>',        -- Move to cell right (wraps)
		-- table_move_down = '<A-j>',         -- Move to cell down (wraps)
		-- table_move_up = '<A-k>',           -- Move to cell up (wraps)

		-- Footnotes operations (Normal mode)
		vim.keymap.set("n", "<leader>mfi", "<Plug>(MarkdownPlusFootnoteInsert)", { desc = "Insert new footnote" })
		vim.keymap.set("n", "<leader>mfe", "<Plug>(MarkdownPlusFootnoteEdit)", { desc = "Edit footnote definition" })
		vim.keymap.set("n", "<leader>mfd", "<Plug>(MarkdownPlusFootnoteDelete)", { desc = "Delete footnote" })
		vim.keymap.set("n", "<leader>mfg", "<Plug>(MarkdownPlusFootnoteGotoDefinition)", { desc = "Go to definition" })
		vim.keymap.set("n", "<leader>mfr", "<Plug>(MarkdownPlusFootnoteGotoReference)", { desc = "Go to reference" })
		vim.keymap.set("n", "<leader>mfn", "<Plug>(MarkdownPlusFootnoteNext)", { desc = "Next footnote" })
		vim.keymap.set("n", "<leader>mfp", "<Plug>(MarkdownPlusFootnotePrev)", { desc = "Previous footnote" })
		vim.keymap.set("n", "<leader>mfl", "<Plug>(MarkdownPlusFootnoteList)", { desc = "List all footnotes" })
	end,
}
