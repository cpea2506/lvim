# lvim

My LunarVim configuration, inspired from my [Peavim](https://github.com/cpea2506/peavim) config

<img width="1162" alt="dashboard" src="https://user-images.githubusercontent.com/42694704/204636689-8b57aeb1-b091-4246-a0cb-1452b98054b5.png">
<img width="1162" alt="main" src="https://user-images.githubusercontent.com/42694704/204637373-81dc7077-d255-40de-b015-f4b856868d23.png">

## One-liner installation command

```bash
bash <(curl -s https://raw.githubusercontent.com/cpea2506/lvim/main/utils/install.sh)
```

This will install LunarVim for you if there isn't any.

### Requirement

- Unix-like OS (macOS, Linux,...)
- Neovim nightly

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
