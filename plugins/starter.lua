local function center_str(str, len)
	local padding = math.max(0, math.floor((len - #str) / 2))
	return string.rep(" ", padding) .. str .. string.rep(" ", len - padding - #str)
end

local width = 70

local user = os.getenv("USER") or "Unkown"

local greeting = "Welcome, " .. user:gsub("^%l", string.upper)

local logo = {
	"   ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓▓█████ ▓█████▄   ",
	"   ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓█   ▀ ▒██▀ ██▌  ",
	"  ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░▒███   ░██   █▌  ",
	"  ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ▒▓█  ▄ ░▓█▄   ▌  ",
	"  ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒░▒████▒░▒████▓   ",
	"  ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░░░ ▒░ ░ ▒▒▓  ▒   ",
	"  ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ░ ░  ░ ░ ▒  ▒   ",
	"     ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░      ░    ░ ░  ░   ",
	"           ░    ░  ░    ░ ░        ░   ░         ░      ░  ░   ░      ",
	"                                  ░                          ░        ",
}

local emptyLine = string.rep(" ", width)
table.insert(logo, 1, emptyLine)
table.insert(logo, emptyLine)
table.insert(logo, center_str(greeting, width))
table.insert(logo, emptyLine)

require("mini.starter").setup({
	header = table.concat(logo, "\n"),
	footer = "",
})
