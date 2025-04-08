return {
	{
		"goolord/alpha-nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local theme = require("alpha.themes.dashboard")
			theme.section.header.val = {
				[[                                                                                                              ]],
				[[                                                                                                              ]],
				[[                                                                                                              ]],
				[[ __        __    _                         ____                 _           _                                 ]],
				[[ \ \      / /_ _| | _____   _   _ _ __    / ___|  ___  ___ ___ | |__   __ _| | ____ _                         ]],
				[[  \ \ /\ / / _` | |/ / _ \ | | | | '_ \   \___ \ / _ \/ __/ _ \| '_ \ / _` | |/ / _` |                        ]],
				[[   \ V  V / (_| |   <  __/ | |_| | |_) |   ___) |  __/ (_| (_) | |_) | (_| |   < (_| |_ _ _                   ]],
				[[    \_/\_/ \__,_|_|\_\___|  \__,_| .__( ) |____/ \___|\___\___/|_.__/ \__,_|_|\_\__,_(_|_|_)                  ]],
				[[                                 |_|  |/                                                                      ]],
				[[  _____ _            __  __       _        _        _                                                         ]],
				[[ |_   _| |__   ___  |  \/  | __ _| |_ _ __(_)_  __ | |__   __ _ ___   _   _  ___  _   _                       ]],
				[[   | | | '_ \ / _ \ | |\/| |/ _` | __| '__| \ \/ / | '_ \ / _` / __| | | | |/ _ \| | | |                      ]],
				[[   | | | | | |  __/ | |  | | (_| | |_| |  | |>  <  | | | | (_| \__ \ | |_| | (_) | |_| |_ _ _                 ]],
				[[   |_| |_| |_|\___| |_|  |_|\__,_|\__|_|  |_/_/\_\ |_| |_|\__,_|___/  \__, |\___/ \__,_(_|_|_)                ]],
				[[                                                                      |___/                                   ]],
				[[  _____     _ _                 _   _                     _     _ _                   _     _     _ _         ]],
				[[ |  ___|__ | | | _____      __ | |_| |__   ___  __      _| |__ (_) |_ ___   _ __ __ _| |__ | |__ (_) |_       ]],
				[[ | |_ / _ \| | |/ _ \ \ /\ / / | __| '_ \ / _ \ \ \ /\ / / '_ \| | __/ _ \ | '__/ _` | '_ \| '_ \| | __|      ]],
				[[ |  _| (_) | | | (_) \ V  V /  | |_| | | |  __/  \ V  V /| | | | | ||  __/ | | | (_| | |_) | |_) | | |_ _     ]],
				[[ |_|  \___/|_|_|\___/ \_/\_/    \__|_| |_|\___|   \_/\_/ |_| |_|_|\__\___| |_|  \__,_|_.__/|_.__/|_|\__(_)    ]],
				[[                                                                                                              ]],
				[[                                                                                                              ]],
				[[                                                                                                              ]],
				[[                                                                                                              ]],
				[[                                                                                                              ]],
				[[  _  __                 _        _                     _        ____                 _           _            ]],
				[[ | |/ /_ __   ___   ___| | __   | | ___ __   ___   ___| | __   / ___|  ___  ___ ___ | |__   __ _| | ____ _    ]],
				[[ | ' /| '_ \ / _ \ / __| |/ /   | |/ / '_ \ / _ \ / __| |/ /   \___ \ / _ \/ __/ _ \| '_ \ / _` | |/ / _` |   ]],
				[[ | . \| | | | (_) | (__|   < _  |   <| | | | (_) | (__|   < _   ___) |  __/ (_| (_) | |_) | (_| |   < (_| |_  ]],
				[[ |_|\_\_| |_|\___/ \___|_|\_( ) |_|\_\_| |_|\___/ \___|_|\_( ) |____/ \___|\___\___/|_.__/ \__,_|_|\_\__,_(_) ]],
				[[                            |/                             |/                                                 ]],
				[[                                                                                                              ]],
				[[                                                                                                              ]],
				[[                                                                                                              ]],
			}
			theme.section.buttons.val = {}
			alpha.setup(theme.config)
		end,
	},
}
