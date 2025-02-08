local Config = require('config')
local wezterm = require('wezterm')

require('utils.backdrops')
   :set_images()
   :random()

require('events.tab-title').setup({ hide_active_tab_unseen = false, unseen_icon = 'circle' })
require('events.new-tab-button').setup()

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.tabline'))
   :append(require('config.launch')).options
