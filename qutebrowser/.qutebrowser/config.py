config.bind('<Ctrl-j>', 'completion-item-focus --history next', mode='command')
config.bind('<Ctrl-k>', 'completion-item-focus --history prev', mode='command')
config.bind('<Ctrl-t>', 'open -t')
config.bind('jj', 'mode-leave', mode='insert')

config.load_autoconfig()
