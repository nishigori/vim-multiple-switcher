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

* number (number <-> relativenumber)

    Vimのバージョンが7.3以上の場合の挙動です。
    もしバージョンが7.3より前なら、numberのinvertオプション扱いとなります。

* background (light <-> bark)

* Vimデフォルトのインバートオプション

  主に真偽値で判定されるオプションも有効となります。

  これは、set inv○○○ と同じ働きをします。

  インバートオプションについては :help Q_op を参照してください。

## デフォルトキーマッピング

* ,b

> switched buffer (next, previous)

* ,n

> switched number (number, relativenumber)

* ,B

> switched background (light, dark)

デフォルトのキーマップを無効にするには、以下をvimrcに記述してください。

    `let g:multiple_switcher_no_default_key_maps = 1`

## オプション

* custom key mapping

例.)

    let g:multiple_switcher_no_default_key_maps = 1

    nmap <silent> <Leader>b <Plug>(muotiple_switcher_buffer)

    nnoremap <silent> <Leader>e :<C-u>call multiple_switcher#switch('expandtab')<CR>

