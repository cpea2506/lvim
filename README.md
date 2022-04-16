# lvim

My LunarVim configuration, inspired from my [Peavim](https://github.com/cpea2506/peavim) config

<img width="1500"
     alt="Screen Shot 2022-04-08 at 00 42 08" 
     src="https://user-images.githubusercontent.com/42694704/162264344-6dcdf17a-b734-4e9d-bdd4-5442a18ca24c.png">

### One Line Installation Command

```bash
bash <(curl -s https://raw.githubusercontent.com/cpea2506/lvim/main/utils/install.sh)
```

This will install LunarVim for you if there isn't any.

### Requirement

- Neovim >= 0.7

### Options

#### Treesitter:

The treesitter (`lua/pea/treesitter.lua`) installation has been disabled by default. You need to specify
your list of language or using "all".

```lua
lvim.builtin.treesitter.ensure_installed = {"rust", "swift", "lua", ...}
-- or 
lvim.builtin.treesitter.ensure_installed = "all"
```

#### GUI:

If you are using `Neovide` and/or `Vimr`. You need to do these things to make it receive LunarVim config:

  1. Go inside `lvim/utils` folder: `cd $HOME/.config/lvim/utils`
  2. Setup
  - Neovide

    ```bash
    chmod +x ./lvide
  
    mv ./lvide $HOME/.local/bin/.
    ```
  - Vimr

    ```bash
    chmod +x ./lvimr
  
    mv ./lvimr $HOME/.local/bin/.
    ```
  
  3. Now you can start using `lvide` for `neovide` and/or `lvimr` for `vimr`
