# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### windows克隆

```powershell
git clone https://github.com/AstroNvim/AstroNvim.git $env:LOCALAPPDATA\nvim
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/1538379200/astronvim_user.git ~/.config/nvim/lua/user
```

#### windows使用

```powershell
git clone https://github.com/1538379200/astronvim_user.git $env:LOCALAPPDATA\nvim\lua\user
```

#### Start Neovim

```shell
nvim
```

## 修改快捷键

`astronvim` 默认映射：https://astronvim.com/Basic%20Usage/mappings


- `Alt + j/k`：函数间上下跳转
- `Alt + h/l`：跳转左右标签（buffer）
- `Ctrl + j/k/h/l`：插入模式下光标移动
- `<leader>Tl`：TODO列表
- `<leader>Tq`：TODO快速修复
- `Ctrl+Shift+F10`：运行代码
- `Ctrl+\`：同 F7 相同的 terminal 窗口
- `Ctrl+F12`：outline，展示页面中所有函数变量等
- `Ctrl+Shift+h/l`：输入模式下跳转行头行尾
