require("luasnip").filetype_extend("bash", { "shell" })
require("luasnip").filetype_extend("markdown", { "markdown" })
require("luasnip").filetype_extend("golang", { "go" })
require("luasnip").filetype_extend("python", { "python" })
require("luasnip").filetype_extend("rust", { "rust" })
require("luasnip").filetype_extend("yaml", { "kubernetes" })
require("luasnip").filetype_extend("html", { "html" })
require("luasnip").filetype_extend("make", { "make" })

require("luasnip").filetype_extend("yaml", { "docker-compose" }) -- not yet working
require("luasnip").filetype_extend("dockerfile", { "docker_file" }) -- not yet working

require("luasnip.loaders.from_vscode").load({ paths = { "./snippets" } })
