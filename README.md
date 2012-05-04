# multiple_switcher.vim

multiple_switcher.vim is switching any mode for Vi IMproved.

# Install

Please put your vim's runtimepath this plugin files.

ex.)

    ~/.vim/plugin/multiple_switcher.vim

    ~/.vim/autoload/multiple_switcher.vim

    ~/.vim/autoload/multiple_switcher/switch.vim

## Availble modes

* buffer (next <-> previous)

* number (number <-> relativenumber)

    for vim's version overed 7.3.
    if v:version < 7.3, toggled number option.

* background (light <-> bark)

* Vim's default invert options

  Enabled invert options, paste|expandtab|list|title ...

  So, Equivalent to set inv****

  read more, :help Q_op

## default key mapping

* ,b

> switched buffer (next, previous)

* ,n

> switched number (number, relativenumber)

* ,B

> switched background (light, dark)

If you're needless default key mappings, specified this script at your vimrc.

    `let g:multiple_switcher_no_default_key_maps = 1`

## Options

* custom key mapping

ex.)

    let g:multiple_switcher_no_default_key_maps = 1

    nmap <silent> <Leader>b <Plug>(muotiple_switcher_buffer)

    nnoremap <silent> <Leader>e :<C-u>call multiple_switcher#switch('expandtab')<CR>

