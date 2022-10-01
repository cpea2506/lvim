# lvim

My LunarVim configuration, inspired from my [Peavim](https://github.com/cpea2506/peavim) config

<img width="1500" alt="dashboard" src="./assets/dashboard.png">
<img width="1500" alt="main" src="./assets/main.png">

## One-liner installation command

```bash
bash <(curl -s https://raw.githubusercontent.com/cpea2506/lvim/main/utils/install.sh)
```

This will install LunarVim for you if there isn't any.

### Requirement

- Neovim >= 0.8

## GUI:

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
