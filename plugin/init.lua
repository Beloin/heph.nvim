-- File type configs
vim.filetype.add({
	filename = {
		["BUILD"] = "heph",
	},
	pattern = {
		["BUILD%..*"] = "heph",
		[".*%.BUILD"] = "heph",
	},
})
