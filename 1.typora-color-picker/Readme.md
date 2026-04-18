# 🎨 Typora-color-picker - 使用说明

## 简介

Typora 一键上色是一个 AutoHotkey V2 脚本，让你在 Typora 编辑器中快速为选中的文字添加颜色。无需记忆复杂的 HTML 标签，只需按下简单的快捷键即可。

---

## 安装与运行

### 前提条件

- Windows 操作系统
- 安装 [AutoHotkey V2](https://www.autohotkey.com/)
- 安装 [Typora](https://typora.io/) 编辑器

### 运行脚本

1. 双击 `typora-color-picker.ahk` 文件运行脚本
2. 系统托盘会出现一个 AutoHotkey 图标，表示脚本正在运行
3. 打开 Typora 编辑器即可使用

### 开机自启（可选）

将 `typora-color-picker.ahk` 文件放入 Windows 启动文件夹：
- 按 `Win + R`，输入 `shell:startup`
- 将脚本文件复制到打开的文件夹中

---

## 使用方法

### 基本操作

1. **选中文字** - 在 Typora 中选中你想要上色的文字
2. **按快捷键** - 按下 `Win + Alt + 颜色键`
3. **完成** - 文字自动变为对应颜色

### 快捷键说明

所有快捷键都需要在 **Typora 窗口激活** 时才能使用。

#### 🔴 红色系（QWERT 行）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+Q` | 红色 | #FF6B6B |
| `Win+Alt+W` | 亮红 | #FF5555 |
| `Win+Alt+E` | 珊瑚 | #FF7F50 |
| `Win+Alt+R` | 品红 | #F06595 |
| `Win+Alt+T` | 亮粉 | #FF79C6 |

#### 🟠 橙色系（ASDFG 行）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+A` | 橙色 | #FF922B |
| `Win+Alt+S` | 亮橙 | #FFB86C |
| `Win+Alt+D` | 金色 | #FFD700 |
| `Win+Alt+F` | 棕色 | #8B4513 |
| `Win+Alt+G` | 深橙 | #FF8C00 |

#### 🟡 黄色系（HJKLZ 行）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+H` | 黄色 | #FFCC00 |
| `Win+Alt+J` | 亮黄 | #F1FA8C |
| `Win+Alt+K` | 金黄 | #FFD700 |
| `Win+Alt+L` | 卡其 | #F0E68C |
| `Win+Alt+Z` | 暗金 | #B8860B |

#### 🟢 绿色系（XCVBN 行）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+X` | 酸橙 | #32CD32 |
| `Win+Alt+C` | 绿色 | #51CF66 |
| `Win+Alt+V` | 亮绿 | #50FA7B |
| `Win+Alt+B` | 森林绿 | #228B22 |
| `Win+Alt+N` | 浅绿 | #90EE90 |

#### 🔵 青色系（M,.'; 行）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+M` | 蓝绿 | #008080 |
| `Win+Alt+,` | 青色 | #22B8CF |
| `Win+Alt+.` | 亮青 | #8BE9FD |
| `Win+Alt+;` | 浅海绿 | #20B2AA |
| `Win+Alt+'` | 深青 | #008B8B |

#### 🔷 蓝色系（12345 数字键）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+1` | 浅蓝 | #87CEEB |
| `Win+Alt+2` | 天蓝 | #87CEFA |
| `Win+Alt+3` | 蔚蓝 | #00BFFF |
| `Win+Alt+4` | 深蓝 | #1E90FF |
| `Win+Alt+5` | 藏蓝 | #00008B |

#### 🟣 紫色系（67890 数字键）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+6` | 紫色 | #9775FA |
| `Win+Alt+7` | 亮紫 | #BD93F9 |
| `Win+Alt+8` | 中紫 | #9370DB |
| `Win+Alt+9` | 梅红 | #DDA0DD |
| `Win+Alt+0` | 深靛 | #4B0082 |

#### ⚪ 无彩色（-=[]\ 符号键）
| 快捷键 | 颜色 | 颜色代码 |
|--------|------|----------|
| `Win+Alt+-` | 白色 | #FFFFFF |
| `Win+Alt+=` | 银色 | #C0C0C0 |
| `Win+Alt+[` | 深灰 | #44475A |
| `Win+Alt+]` | 暗黑 | #282A36 |
| `Win+Alt+\` | 黑色 | #808080 |

#### 帮助
| 快捷键 | 功能 |
|--------|------|
| `Win+Alt+/` | 显示/隐藏帮助窗口 |

---

## 帮助窗口

按 `Win+Alt+/` 可以打开帮助窗口，显示所有颜色的快捷键对照表。

![image](https://private-user-images.githubusercontent.com/33207806/566779362-2dbedd70-0813-4c00-898b-909de8bec8ad.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzQwMDI4MzcsIm5iZiI6MTc3NDAwMjUzNywicGF0aCI6Ii8zMzIwNzgwNi81NjY3NzkzNjItMmRiZWRkNzAtMDgxMy00YzAwLTg5OGItOTA5ZGU4YmVjOGFkLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjAzMjAlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwMzIwVDEwMjg1N1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWI1M2I2MDIzZTIzMmQ3MDg0NzE2MDE0NzlkMTIwYTIyMmM0MGM1MmRjNjUzZTVhY2I4NTg0MTMwNzI5NzhkOWYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.uBz0xRhbbbQKIGi3dd3nm4NvlfyHzrfpbJCLGuoVahA)

### 帮助窗口功能

- **彩色分组标题** - 每个色系用对应的颜色显示
- **颜色按钮** - 显示快捷键和颜色预览
- **拖动窗口** - 可以用鼠标拖动窗口到任意位置
- **关闭窗口** - 按 `Esc` 键或点击窗口外部关闭

---

## 注意事项

1. **必须在 Typora 中才能使用** - 快捷键只在 Typora 窗口激活时有效
2. **需要先选中文字** - 如果没有选中文字，脚本不会执行任何操作
3. **颜色使用 HTML 标签** - 上色后的文字会被包裹在 `<span style='color:xxx'>` 标签中
4. **不影响原始格式** - 上色操作会保留文字的原始格式

---

## 故障排除

### 脚本无法运行
- 确认已安装 AutoHotkey V2（不是 V1）
- 右键点击脚本，选择"使用 AutoHotkey 运行"

### 快捷键无效
- 确认 Typora 窗口处于激活状态
- 检查是否有其他软件占用了相同的快捷键
- 尝试重新运行脚本

### 帮助窗口无法关闭
- 按 `Esc` 键关闭
- 点击窗口外部区域
- 如果仍无法关闭，在系统托盘右键点击 AutoHotkey 图标选择"退出"

---

## 自定义颜色

如果你想修改或添加颜色，可以编辑脚本文件：

1. 打开 `typora-color-picker.ahk`
2. 找到对应的颜色定义区域
3. 修改颜色代码（支持颜色名称或十六进制代码）
4. 保存并重新运行脚本

### 示例：添加新颜色
```autohotkey
; 在对应的位置添加
#!y::AddColor("#FF5733")  ; Y - 自定义颜色
```

---

## 技术说明

- **脚本语言**: AutoHotkey V2
- **颜色格式**: HTML/CSS 颜色代码
- **快捷键修饰符**: `#` = Win, `!` = Alt
- **兼容性**: Windows 10/11, Typora 1.0+

---

## 更新日志

### v1.0
- 初始版本发布
- 支持 40 种颜色
- 按光谱顺序排列
- 彩色帮助窗口

---

## 许可证

本脚本开源免费，可自由使用和修改。

---

**祝你使用愉快！** 🎨
