local module = DorHUDMod:new("Tsecret", {name = "Solo Overdrill", author = "TK7", description = "https://modworkshop.net/mod/27472", version = "3"})
module:hook_post_require("core/lib/managers/mission/coremissionscriptelement", "coremissionscriptelement")
return module