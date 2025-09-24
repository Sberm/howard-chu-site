---
slug: /
sidebar_position: 1
---

### Linux & MacOS
```sh
curl -fsSL https://raw.githubusercontent.com/Sberm/Transgender.rs/refs/heads/main/scripts/install.sh | bash
```

> Currently only supports Linux and MacOS of x86_64 and Arm64 architectures.

### On Arch Linux

[transgender](https://aur.archlinux.org/packages/transgender) is available as a package in the [AUR](https://aur.archlinux.org). you can install it using your preferred AUR helper. example:

```sh
paru -S transgender
```

### Compiling from source

clone the repo
```bash
git clone https://github.com/Sberm/Transgender.rs.git
```

before compilation, make sure you have rust's environment installed, if not, goto [HERE](https://www.rust-lang.org/tools/install)
<br/>

compile & install
```bash
cd Transgender.rs
make
make install
```

### Shell configuration

Currently only supports `bash` and `zsh`.

paste this shell script function into your shell configuration file, its location depends on which shell you use (`~/.bashrc`, `~/.bash_profile`, `source ~/.zshrc`)
```
eval "$(transgender --sh)"
```

refresh your shell configuration, or open up a new terminal window
```bash
# bash
source ~/.bashrc
# or
source ~/.bash_profile

# zsh
source ~/.zshrc
```

launch `Transgender.rs` with:
```bash
ts
```

### Features

* File exploration
* File searching
* Switching directories
* Opening files
* Multiple themes
