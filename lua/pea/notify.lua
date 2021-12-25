lvim.builtin.notify = {
	active = true,
	on_config_done = nil,
	opts = {
		---@usage Animation style one of { "fade", "slide", "fade_in_slide_out", "static" }
		stages = "fade_in_slide_out",

		---@usage timeout for notifications in ms, default 5000
		timeout = 1000,

		---@usage highlight behind the window for stages that change opacity
		background_colour = "#abb2bf",

		---@usage Icons for the different levels
		icons = {
			ERROR = "",
			WARN = "",
			INFO = "",
			DEBUG = "",
			TRACE = "✎",
		},
	},
}
