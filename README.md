# lvim

My LunarVim configuration, inspired from my [Peavim](https://github.com/cpea2506/peavim) config

### One Line Installation Command

```bash
bash <(curl -s https://raw.githubusercontent.com/cpea2506/lvim/main/utils/install.sh)
```

This will install LunarVim for you if there isn't any.

### Requirement

- Neovim >= 0.6

### Options

If you are using `Neovide` and/or `Vimr`. You need to do these things to make it receive LunarVim config:

1. Go inside lvim folder: `cd $HOME/.config/lvim`
2. Setup
- Neovide

  ```bash
  chmod +x ./utils/lvide
  
  mv ./utils/lvide $HOME/.local/bin/.
  ```

- Vimr

  ```bash
  chmod +x ./utils/lvimr
  
  mv ./utils/lvimr $HOME/.local/bin/.
  ```
