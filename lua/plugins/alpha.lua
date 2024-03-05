return {
  {
    'goolord/alpha-nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      local alpha = require'alpha'
      local dashboard = require'alpha.themes.dashboard'
      dashboard.section.header.val = {
        "",
        "",
	      "",
	      "",
        "Wake up, Secobaka...",
        "The Matrix has you...",
        "Follow the white rabbit.",
        "",
        "",
        "",
        "Knock, knock, Secobaka."
      }
      alpha.setup(dashboard.config)
    end,
  }
}
