; ================================
; Typora 一键上色 · AHK V2 v1.0
; 快捷键：按光谱顺序排列 (红橙黄绿青蓝紫 + 无彩色)
; ================================
#HotIf WinActive("ahk_exe Typora.exe")

; ===== 红色系 =====
#!q::AddColor("red")           ; Q - 红色
#!w::AddColor("#FF5555")       ; W - 亮红
#!e::AddColor("coral")         ; E - 珊瑚
#!r::AddColor("magenta")       ; R - 品红
#!t::AddColor("#FF79C6")       ; T - 亮粉

; ===== 橙色系 =====
#!a::AddColor("orange")        ; A - 橙色
#!s::AddColor("#FFB86C")       ; S - 亮橙
#!d::AddColor("gold")          ; D - 金色
#!f::AddColor("brown")         ; F - 棕色
#!g::AddColor("#FF8C00")       ; G - 深橙

; ===== 黄色系 =====
#!h::AddColor("#FFCC00")       ; H - 黄色
#!j::AddColor("#F1FA8C")       ; J - 亮黄
#!k::AddColor("#FFD700")       ; K - 金黄
#!l::AddColor("#F0E68C")       ; L - 卡其
#!z::AddColor("#B8860B")       ; Z - 暗金

; ===== 绿色系 =====
#!x::AddColor("lime")          ; X - 酸橙
#!c::AddColor("green")         ; C - 绿色
#!v::AddColor("#50FA7B")       ; V - 亮绿
#!b::AddColor("#228B22")       ; B - 森林绿
#!n::AddColor("#90EE90")       ; N - 浅绿

; ===== 青色系 =====
#!m::AddColor("teal")          ; M - 蓝绿
#!,::AddColor("cyan")          ; , - 青色
#!.::AddColor("#8BE9FD")       ; . - 亮青
#!;::AddColor("#20B2AA")       ; ; - 浅海绿
#!'::AddColor("#008B8B")       ; ' - 深青

; ===== 蓝色系 =====
#!1::AddColor("#87CEEB")       ; 1 - 浅蓝
#!2::AddColor("#87CEFA")       ; 2 - 天蓝
#!3::AddColor("#00BFFF")       ; 3 - 蔚蓝
#!4::AddColor("#1E90FF")       ; 4 - 深蓝
#!5::AddColor("#00008B")       ; 5 - 藏蓝

; ===== 紫色系 =====
#!6::AddColor("purple")        ; 6 - 紫色
#!7::AddColor("#BD93F9")       ; 7 - 亮紫
#!8::AddColor("#9370DB")       ; 8 - 中紫
#!9::AddColor("#DDA0DD")       ; 9 - 梅红
#!0::AddColor("#4B0082")       ; 0 - 深靛

; ===== 无彩色 =====
#!-::AddColor("white")         ; - - 白色
#!=::AddColor("silver")        ; = - 银色
#![::AddColor("#44475A")       ; [ - 深灰
#!]::AddColor("#282A36")       ; ] - 暗黑
#!\::AddColor("black")         ; \ - 黑色

#!/::ShowHotkeyHelp()          ; / - 显示帮助

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
    helpGui.BackColor := "1E1E1E"

    ; 添加拖动功能
    MakeGuiDraggable(helpGui)

    ; 标题
    helpGui.SetFont("s18 Bold cFFFFFF", "Microsoft YaHei UI")
    helpGui.AddText("xm ym w600 Center", "🎨 Typora 一键上色")

    ; 副标题
    helpGui.SetFont("s12 cA0A0A0", "Microsoft YaHei UI")
    helpGui.AddText("xm y+5 w600 Center", "左手区域快捷操作：Win+Alt+如下对应字符")

    ; 分隔线
    helpGui.SetFont("s10 c505050", "Microsoft YaHei UI")
    helpGui.AddText("xm y+10 w600 Center", "══════════════════════════════════════════════════════════════")

    ; 定义颜色数据 - 每个色系5个颜色 (带标题颜色)
    colorGroups := [
        {name: "🔴 红色系", color: "0xFF6B6B", keys: [{k:"Q",n:"红色"},{k:"W",n:"亮红"},{k:"E",n:"珊瑚"},{k:"R",n:"品红"},{k:"T",n:"亮粉"}]},
        {name: "🟠 橙色系", color: "0xFF922B", keys: [{k:"A",n:"橙色"},{k:"S",n:"亮橙"},{k:"D",n:"金色"},{k:"F",n:"棕色"},{k:"G",n:"深橙"}]},
        {name: "🟡 黄色系", color: "0xFFCC00", keys: [{k:"H",n:"黄色"},{k:"J",n:"亮黄"},{k:"K",n:"金黄"},{k:"L",n:"卡其"},{k:"Z",n:"暗金"}]},
        {name: "🟢 绿色系", color: "0x51CF66", keys: [{k:"X",n:"酸橙"},{k:"C",n:"绿色"},{k:"V",n:"亮绿"},{k:"B",n:"森林绿"},{k:"N",n:"浅绿"}]},
        {name: "🔵 青色系", color: "0x22B8CF", keys: [{k:"M",n:"蓝绿"},{k:",",n:"青色"},{k:".",n:"亮青"},{k:";",n:"浅海绿"},{k:"'",n:"深青"}]},
        {name: "🔷 蓝色系", color: "0x339AF0", keys: [{k:"1",n:"浅蓝"},{k:"2",n:"天蓝"},{k:"3",n:"蔚蓝"},{k:"4",n:"深蓝"},{k:"5",n:"藏蓝"}]},
        {name: "🟣 紫色系", color: "0x9775FA", keys: [{k:"6",n:"紫色"},{k:"7",n:"亮紫"},{k:"8",n:"中紫"},{k:"9",n:"梅红"},{k:"0",n:"深靛"}]},
        {name: "⚪ 无彩色", color: "0xC0C0C0", keys: [{k:"-",n:"白色"},{k:"=",n:"银色"},{k:"[",n:"深灰"},{k:"]",n:"暗黑"},{k:"\",n:"黑色"}]}
    ]

    ; 颜色映射
    colors := Map(
        "Q", "red", "W", "#FF5555", "E", "coral", "R", "magenta", "T", "#FF79C6",
        "A", "orange", "S", "#FFB86C", "D", "gold", "F", "brown", "G", "#FF8C00",
        "H", "#FFCC00", "J", "#F1FA8C", "K", "#FFD700", "L", "#F0E68C", "Z", "#B8860B",
        "X", "lime", "C", "green", "V", "#50FA7B", "B", "#228B22", "N", "#90EE90",
        "M", "teal", ",", "cyan", ".", "#8BE9FD", ";", "#20B2AA", "'", "#008B8B",
        "1", "#87CEEB", "2", "#87CEFA", "3", "#00BFFF", "4", "#1E90FF", "5", "#00008B",
        "6", "purple", "7", "#BD93F9", "8", "#9370DB", "9", "#DDA0DD", "0", "#4B0082",
        "-", "white", "=", "silver", "[", "#44475A", "]", "#282A36", "\", "black"
    )

    ; 分组显示颜色
    yPos := "y+15"
    for group in colorGroups {
        ; 分组标题 - 使用对应的颜色
        helpGui.SetFont("s13 Bold c" . group.color, "Microsoft YaHei UI")
        helpGui.AddText("xm " yPos " w90", group.name)

        ; 该组的颜色按钮
        xPos := "x+10 yp"
        for item in group.keys {
            color := colors[item.k]
            colorHex := GetColorHex(color)

            ; 创建颜色按钮样式
            btnText := item.k
            helpGui.SetFont("s9 Bold c" . colorHex)

            ; 使用按钮控件显示快捷键
            btn := helpGui.AddButton(xPos " w32 h28", item.k)
            btn.SetFont("s10 Bold cFFFFFF")

            ; 设置按钮背景色
            if (color = "white" || color = "silver") {
                btn.Opt("BackgroundC0C0C0 c000000")
            } else if (color = "#44475A" || color = "#282A36" || color = "black") {
                btn.Opt("Background444444 cFFFFFF")
            } else {
                btn.Opt("Background" . SubStr(colorHex, 3))
            }

            ; 添加提示文本
            helpGui.SetFont("s12 c" . colorHex)
            helpGui.AddText("x+5 yp+5 w50", item.n)

            xPos := "x+5 yp-5"
        }

        yPos := "y+35"
    }

    ; 分隔线
    helpGui.SetFont("s10 c505050", "Microsoft YaHei UI")
    helpGui.AddText("xm y+10 w600 Center", "══════════════════════════════════════════════════════════════")

    ; 帮助快捷键
    helpGui.SetFont("s9 c808080")
    helpGui.AddText("xm y+10 w600 Center", "Win+Alt+/ 显示此窗口  ·  按 Esc 关闭")

    ; 显示窗口并居中
    helpGui.Show("AutoSize Center")

    ; Esc键关闭 - 使用窗口消息处理
    CloseHelp(*) {
        helpGui.Destroy()
    }
    
    ; 为帮助窗口设置热键
    HotIf (*) => WinActive("ahk_id " helpGui.Hwnd)
    Hotkey "Escape", CloseHelp
    HotIf
}

; 使窗口可拖动 - 使用系统拖动方式
MakeGuiDraggable(gui) {
    ; 为所有控件添加鼠标事件
    for ctrl in gui {
        ctrl.OnEvent("LButtonDown", StartDragSys.Bind(gui))
    }

    ; 窗口背景也支持拖动
    OnMessage(0x201, WM_LBUTTONDOWN.Bind(gui))  ; WM_LBUTTONDOWN
}

; 使用系统方式拖动 - 模拟标题栏拖动
StartDragSys(gui, ctrl, *) {
    ; 发送 WM_NCLBUTTONDOWN 消息模拟标题栏拖动
    PostMessage(0xA1, 2,,, "ahk_id " gui.Hwnd)  ; WM_NCLBUTTONDOWN, HTCAPTION
}

; 处理窗口消息 - 左键按下
WM_LBUTTONDOWN(guiObj, wParam, lParam, msg, hwnd) {
    ; 检查 guiObj 是否为有效的 Gui 对象
    if (!IsObject(guiObj) || !guiObj.HasProp("Hwnd")) {
        return
    }
    if (hwnd = guiObj.Hwnd) {
        StartDragSys(guiObj, "")
    }
}

; 获取颜色对应的十六进制值（用于显示）
GetColorHex(color) {
    switch color {
        case "red": return "0xFF6B6B"
        case "green": return "0x51CF66"
        case "blue": return "0x339AF0"
        case "#FFCC00": return "0xFFCC00"
        case "orange": return "0xFF922B"
        case "purple": return "0x9775FA"
        case "cyan": return "0x22B8CF"
        case "white": return "0xFFFFFF"
        case "black": return "0x808080"
        case "magenta": return "0xF06595"
        case "#FF5555": return "0xFF5555"
        case "#50FA7B": return "0x50FA7B"
        case "#8BE9FD": return "0x8BE9FD"
        case "#BD93F9": return "0xBD93F9"
        case "#FFB86C": return "0xFFB86C"
        case "#FF79C6": return "0xFF79C6"
        case "#F1FA8C": return "0xF1FA8C"
        case "#6272A4": return "0x6272A4"
        case "#44475A": return "0x44475A"
        case "#282A36": return "0x44475A"
        case "brown": return "0x8B4513"
        case "lime": return "0x32CD32"
        case "teal": return "0x008080"
        case "indigo": return "0x4B0082"
        case "gold": return "0xFFD700"
        case "coral": return "0xFF7F50"
        case "silver": return "0xC0C0C0"
        ; 新增颜色
        case "#FF8C00": return "0xFF8C00"
        case "#FFD700": return "0xFFD700"
        case "#F0E68C": return "0xF0E68C"
        case "#B8860B": return "0xB8860B"
        case "#228B22": return "0x228B22"
        case "#90EE90": return "0x90EE90"
        case "#20B2AA": return "0x20B2AA"
        case "#008B8B": return "0x008B8B"
        case "#87CEEB": return "0x87CEEB"
        case "#87CEFA": return "0x87CEFA"
        case "#00BFFF": return "0x00BFFF"
        case "#1E90FF": return "0x1E90FF"
        case "#00008B": return "0x00008B"
        case "#9370DB": return "0x9370DB"
        case "#DDA0DD": return "0xDDA0DD"
        case "#4B0082": return "0x4B0082"
        default: return "0xFFFFFF"
    }
}