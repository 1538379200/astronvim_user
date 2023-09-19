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

- `Alt + j/k`：函数间上下跳转 -- *normal*
- `Alt + h/l`：跳转左右标签（buffer）-- *normal*
- `Ctrl + j/k/h/l`：插入模式下光标移动 -- *insert*
- `<leader>Tl`：TODO列表 -- *normal*
- `<leader>Tq`：TODO快速修复 -- *normal*
- `Ctrl+Shift+F10`：运行代码/预览markdown等 -- *normal*
- `Ctrl+\`：同 F7 相同的 terminal 窗口，使用 `Ctrl+\` 然后使用 `Ctrl+n` 可回到normal模式，normal模式下可以使用 `Ctrl+\` 或 `Ctrl+j/k` 或 `F7` 切换到编辑器中 --*normal*
- `Ctrl+F12`：侧边栏展示页面中所有函数变量等 -- *normal*
- `Ctrl+Shift+h/l`：输入模式下跳转行头行尾 -- *insert*
- `<leader>a`：选择生成不同的注释结构（可以使用 `luasnip` 的跳转功能）-- *normal*
- `Ctrl+Enter`：`luasnip` 的向下跳转 -- *insert*
- `Ctrl+Shift+Enter`：`luasnip` 向上跳转 -- *insert*
- `Shift+Enter` ：普通模式下增加一行 -- *normal*
- `Ctrl+s`：插入和普通模式强制保存 -- *normal, insert*
- `]e`：跳转到下一个错误，`[e` 跳转上一个错误
- `F12`：lspsaga的outline，悬浮窗口形式
	- `<Enter>`：跳转
	- `q`：关闭
- `]t/[t`：上一个和下一个 todo 标记
- `<leader>I`：`lspsaga` 的 `incoming_calls` ，查看谁调用了此方法函数
- `<leader>O`：`lspsaga` 的 `outgoing_calls` ，查看此函数使用了那些方法
	- `<Enter>`：打开文件，跳转
	- `|`：垂直分屏
	- `\`：水平分屏
	- `t`：tab形式打开
	- `q`：退出
	- `<C-c>k`：关闭
	- `<C-l>`：在窗口间切换
