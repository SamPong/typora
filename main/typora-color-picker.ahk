; ================================
; Typora 一键上色 · AHK V2 v1.0
; 快捷键：Win+Alt+R / G / B / Y / O
; ================================
#HotIf WinActive("ahk_exe Typora.exe")

#!r::AddColor("red")
#!g::AddColor("green")
#!b::AddColor("blue")
#!y::AddColor("#FFCC00")
#!o::AddColor("orange")
#!/::ShowHotkeyHelp()

#HotIf

AddColor(color) {
    oldClip := A_Clipboard
    A_Clipboard := ""
    Send "^c"
    if !ClipWait(1, 0) {
        A_Clipboard := oldClip
        return
    }
    A_Clipboard := "<span style='color:" color "'>" A_Clipboard "</span>"
    Send "^v"
    Sleep 100
    A_Clipboard := oldClip
}

ShowHotkeyHelp() {
    ; 创建美观的帮助窗口
    helpGui := Gui("+AlwaysOnTop +ToolWindow -Caption +Border")
    helpGui.SetFont("s10", "Segoe UI")
    helpGui.BackColor := "2D2D2D"

    ; 标题
    helpGui.SetFont("s12 Bold cFFFFFF")
    helpGui.AddText("xm ym w280 Center", "🎨 Typora 一键上色")

    ; 分隔线
    helpGui.SetFont("s8 c808080")
    helpGui.AddText("xm y+5 w280 Center", "─────────────────────────")

    ; 快捷键列表
    helpGui.SetFont("s10 Norm")
    yPos := "y+10"

    ; 定义颜色和对应的颜色块
    colors := Map(
        "R", "red",
        "G", "green",
        "B", "blue",
        "Y", "#FFCC00",
        "O", "orange"
    )

    colorNames := Map(
        "R", "红色",
        "G", "绿色",
        "B", "蓝色",
        "Y", "黄色",
        "O", "橙色"
    )

    for key, color in colors {
        ; 快捷键
        helpGui.SetFont("s10 Bold cE0E0E0")
        helpGui.AddText("xm " yPos " w100", "Win+Alt+" key)

        ; 箭头
        helpGui.SetFont("s10 c808080")
        helpGui.AddText("x+5 yp", "→")

        ; 颜色名称
        helpGui.SetFont("s10 c" . (color = "#FFCC00" ? "0xFFCC00" : (color = "red" ? "0xFF6B6B" : (color = "green" ? "0x51CF66" : (color = "blue" ? "0x339AF0" : (color = "orange" ? "0xFF922B" : color))))))
        helpGui.AddText("x+10 yp w100", "● " . colorNames[key])

        yPos := "y+8"
    }

    ; 帮助快捷键
    helpGui.SetFont("s10 cA0A0A0")
    helpGui.AddText("xm y+15 w280 Center", "─────────────────────────")
    helpGui.SetFont("s9 c808080")
    helpGui.AddText("xm y+8 w280 Center", "Win+Alt+/  显示此帮助窗口")
    helpGui.AddText("xm y+5 w280 Center", "按 Esc 关闭")

    ; 显示窗口并居中
    helpGui.Show("AutoSize Center")

    ; Esc键关闭
    HotIfWinActive("ahk_id " helpGui.Hwnd)
    Hotkey("Escape", (*) => helpGui.Destroy())
    HotIf()
}