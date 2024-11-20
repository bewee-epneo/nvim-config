require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-P>", "<C-I>")
map("n", "<C-O>", "<C-O>")

map("n", "<leader>tn", ":tabnew <cr>", { desc = "Tab New" })
map("n", "<leader>td", ":tabclose <cr>", { desc = "Tab Close" })

map("n", "<leader>tt", ":Telescope resume <cr>", { desc = "Telescope Resume" })

map("n", "<leader>hc", vim.lsp.buf.hover, { desc = "LSP hover" })
map("n", "<leader>df", vim.diagnostic.open_float, { desc = "LSP diagnostic float" })

map("n", "<leader>gh", ":DiffviewFileHistory<cr>", { noremap = true, desc = "Git file history" })
map("n", "<leader>gg", ":DiffviewOpen<cr>", { noremap = true, desc = "Git diff" })

local gitsigns = require("gitsigns")
map("n", "]c", gitsigns.next_hunk, { desc = "Git next change" })
map("n", "[c", gitsigns.prev_hunk, { desc = "Git previous change" })
map("n", "<leader>ha", gitsigns.stage_hunk, { desc = "Git stage hunk" })
map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Git reset hunk" })
map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Git preview hunk" })

map("n", "<leader>gcn", ":GitConflictNextConflict <cr>", { desc = "Git Conflict next" })
map("n", "<leader>gcp", ":GitConflictPrevConflict <cr>", { desc = "Git Conflict previous" })
map("n", "<leader>gcc", ":GitConflictChooseOurs <cr>", { desc = "Git Conflict choose current" })
map("n", "<leader>gci", ":GitConflictChooseTheirs <cr>", { desc = "Git Conflict choose incoming" })
map("n", "<leader>gcd", ":GitConflictChooseNone <cr>", { desc = "Git Conflict choose none" })
map("n", "<leader>gca", ":GitConflictChooseBoth <cr>", { desc = "Git Conflict choose both" })
map("n", "<leader>gcq", ":GitConflictListQf <cr>", { desc = "Git Conflict loclist" })
