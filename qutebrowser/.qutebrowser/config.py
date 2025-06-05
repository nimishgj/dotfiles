config.bind('<Ctrl-j>', 'completion-item-focus --history next', mode='command')
config.bind('<Ctrl-k>', 'completion-item-focus --history prev', mode='command')
config.bind('<Ctrl-t>', 'open -t')

c.fonts.tabs.unselected = '20pt JetbrainsMono'
c.fonts.prompts = '20pt JetbrainsMono'

config.load_autoconfig()
