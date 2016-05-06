# brainfuck-highlight.vim

A practical Brainfuck highlight plugin for Vim.

## features

-   Highlight `[-]`.
-   Highlight balanced `<`/`>`s. (partial)

## install

You should do like:

``` vim
    NeoBundleLazy 'kmyk/brainfuck-highlight.vim', { 'autoload' : { 'filetypes' : 'brainfuck' } }
```

## please help me

I want to highlight all `<`/`>`-balanced region recursively, but now I can only do some fixed `<`/`>`s.

Formally, the `<`/`>`-balanced region is defined as:

```
    t := ""
       | '<' t '>'
       | '>' t '<'
       | ',' t
       | '.' t
       | '[' t ']'
```

But now, I can only highlight a region like:

```
    t := ""
       | '<' t '>'
       | '>' t '<'
       | ',' t
       | '.' t
```

`'[' t ']'` is lacked.

If you know how to fix this, please tell me that. Thank you.
