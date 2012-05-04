# multiple_switcher.vim

Vim上で様々なオプションをスイッチ（トグル）するプラグイン。

# Install

runtimepath上に以下のように配置してください。

例.)

    ~/.vim/plugin/multiple_switcher.vim

    ~/.vim/autoload/multiple_switcher.vim

    ~/.vim/autoload/multiple_switcher/switch.vim

## モード一覧

* buffer (next <-> previous)
* expandtab (expandtab <-> noexpandtab)
* number (number <-> relativenumber)
    for vim's version overed 7.3.
* paste (paste <-> nopaste)
* wrap (wrap <-> nowrap)
* background (light <-> bark)

## How to use

* デフォルトキーマッピング

    ,b : switched buffer (next, previous)

    ,e : switched expandtab (expandtab, noexpandtab)

    ,n : switched number (number, relativenumber)

    ,p : switched paste-mode.

    ,w : switched wrap (enabled, nowrap)

    ,B : switched background (light, dark)

    デフォルトのキーマップを無効にするには、以下をvimrcに記述してください。

    `let g:multiple_switcher_no_default_key_maps = 1`

* custom key mapping

    例.)

    `nmap <silent> <Leader>b <Plug>(muotiple_switcher_buffer)`
