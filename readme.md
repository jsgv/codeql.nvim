# codeql.nvim

This plugin adds basic syntax highlighting support for [CodeQL](https://securitylab.github.com/tools/codeql/) to neovim.

![Preview](https://user-images.githubusercontent.com/2798097/122945039-91c3da00-d378-11eb-96ac-30de92cea431.png)

## Usage
You can install as you would any other neovim plugin.

For neovim + packer.nvim:

```lua
return require('packer').startup(function()
    -- ...
    use 'jsgv/codeql.nvim'
end)
```

I have not tested on vim, but it should probably work.
In the future I would like to update to use semantic highlighting via treesitter.
