-- TODO: img, link
vim.keymap.set("i", ";t", "<!--TODO: --><esc>2hi", { silent = true, buffer = 0 })

vim.keymap.set("i", ";h1", "<h1></h1><esc>cit", { silent = true, buffer = 0 })
vim.keymap.set("i", ";h2", "<h2></h2><esc>cit", { silent = true, buffer = 0 })
vim.keymap.set("i", ";h3", "<h3></h3><esc>cit", { silent = true, buffer = 0 })
vim.keymap.set("i", ";h4", "<h4></h4><esc>cit", { silent = true, buffer = 0 })
vim.keymap.set("i", ";h5", "<h5></h5><esc>cit", { silent = true, buffer = 0 })
vim.keymap.set("i", ";h6", "<h6></h6><esc>cit", { silent = true, buffer = 0 })
vim.keymap.set("i", ";h6", "<h6></h6><esc>cit", { silent = true, buffer = 0 })
vim.keymap.set("i", ";p", "<p></p><esc>cit", { silent = true, buffer = 0 })

vim.keymap.set("i", ";script", "<script><esc>o</script><esc>O<tab>", { silent = true, buffer = 0 })
vim.keymap.set("i", ";style", "<style><esc>o</style><esc>O<tab>", { silent = true, buffer = 0 })
vim.keymap.set("i", ";body", "<body><esc>o</body><esc>O<tab>", { silent = true, buffer = 0 })
vim.keymap.set("i", ";head", "<head><esc>o</head><esc>O<tab>", { silent = true, buffer = 0 })
vim.keymap.set("i", ";title", "<title></title><esc>cit", { silent = true, buffer = 0 })

vim.keymap.set(
	"i",
	";html",
	'<!DOCTYPE html><enter><html lang="en"><enter><head><enter><meta charset="UTF-8" /><enter><title>Document</title><enter></head><enter><body><enter></body></html><esc>:w<enter>',
	{ silent = true, buffer = 0 }
)