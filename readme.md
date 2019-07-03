# brainfuck-highlight.vim

A practical Brainfuck highlight plugin for Vim.

## features

-   ~~Highlight `[-]`.~~ Nope, didn't like it
-   Highlight balanced `<`/`>`s. (partial)

## install

You should do like:

``` vim
    NeoBundleLazy 'kmyk/brainfuck-highlight.vim', { 'autoload' : { 'filetypes' : 'brainfuck' } }
```

(You can also just plug it into your plugin manager and `autocmd` it.
