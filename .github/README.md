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

- `s` ：flask插件文字搜索 -- *normal*

- `Alt + j/k`：函数间上下跳转 -- *normal*

- `Alt + h/l`：跳转左右标签（buffer）-- *normal*

- `Ctrl + j/k/h/l`：插入模式下光标移动 -- *insert*

- `<leader>Tl`：TODO列表 -- *normal*

- `<leader>Tq`：TODO快速修复 -- *normal*

- `Ctrl+Shift+F10`：运行代码/预览markdown等 -- *normal*

- `Ctrl+\`：同 F7 相同的 terminal 窗口，使用 `Ctrl+\` 然后使用 `Ctrl+n` 可回到normal模式，normal模式下可以使用 `Ctrl+\` 或 `Ctrl+j/k` 或 `F7` 切换到编辑器中 --*normal*

- `Ctrl+F12`：侧边栏展示页面中所有函数变量等 -- *normal*

- `F12`：lspsaga的outline，悬浮窗口形式 -- *normal*
  
  - `<Enter>`：跳转
  - `q`：关闭

- `Ctrl+Shift+h/l`：输入模式下跳转行头行尾 -- *insert*

- `<leader>a`：选择生成不同的注释结构（可以使用 `luasnip` 的跳转功能）-- *normal*
  
  - 常用如：`<leader>af`，为当前函数生成注释

- `Ctrl+Enter`：`luasnip` 的向下跳转 -- *insert*

- `Ctrl+Shift+Enter`：`luasnip` 向上跳转 -- *insert*

- `Shift+Enter` ：普通模式下增加一行 -- *normal*

- `Ctrl+s`：插入和普通模式强制保存 -- *normal, insert*

- `]e`：跳转到下一个错误，`[e` 跳转上一个错误 -- *normal*

- `]t/[t`：上一个和下一个 todo 标记 -- *normal*

- `<leader>I`：`lspsaga` 的 `incoming_calls` ，查看谁调用了此方法函数 -- *normal*

- `<leader>O`：`lspsaga` 的 `outgoing_calls` ，查看此函数使用了那些方法 -- *normal*
  
  - `<Enter>`：打开文件，跳转
  - `|`：垂直分屏
  - `\`：水平分屏
  - `t`：tab形式打开
  - `q`：退出
  - `<C-c>k`：关闭
  - `<C-l>`：在窗口间切换

- `K` 显示文档，再点击一次 `K` 进入弹窗，移动到链接，使用 `gx` 前往链接地址 -- *normal*

- `<leader>fg` ：使用 `telescope` 增加参数过滤  --*normal*：
  
  - `"test" testcases` ：搜索 `testcases` 目录下的 `test` 字符
  
  - `"test" --iglob **/test_child/**` ：搜索所有 `test_child` 目录下文件中的 `test` 字符
  
  - `"test" -g "*.py"` ：过滤文件格式
  
  - 依赖于 `ripgrep` 的过滤，可以参考[ripgrep/GUIDE.md at master · BurntSushi/ripgrep (github.com)](https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md)

- `<leader>ZM` ：开始禅模式，ZenMode，更纯净的代码编写模式 - *normal*

- `Ctrl+Shift+F10`：快速运行当前文件，python文件会自动设置临时 `PYTHONPATH` ，golang则使用 `go run .` ，markdown使用`MarkdownPreview` 预览- *normal*

- `F10` ：打开/关闭 `Overseer` 插件任务管理窗口 - *normal*
