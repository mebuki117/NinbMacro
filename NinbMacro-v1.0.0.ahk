;NinbMarco
;by oyamelon
;v1.0.0

;How to use: https://github.com/oyamelon/NinbMacro

; --- Must Ninb Settings ---
; View Type is Detailed
; Window Size is Small or Medium
; Enable Overlay

; --- Macro Settings ---
Global NinbX := 0  ; X coordinate of the display you want to display
Global NinbY := 0  ; Y coordinate of the display you want to display
Global NinbSize := 0 ; Ninb Window Size Type. 0= Small : 1= Medium : Laege is None
Global ViewCoords := 2  ; Number of coordinates to display (1~5)
Global NinbPic := "C:\Users\PC_User\AppData\Local\Temp\nb-overlay.png"   ; OBS overlay image path

Global oldFileTime := 0  ;Do not change
Global Dummy := True ;Do not change

ninbdisplay()
{
    If (NinbSize = 0)
    {
    NinbH := 20
    NinbH += ViewCoords*20
    }
    If (NinbSize = 1)
    {
    NinbH := 23
    NinbH += ViewCoords*23
    }

    Gui, -Caption
    Gui, +ToolWindow
    Gui, +AlwaysOnTop

    Gui, Add, Picture, X0 Y-28 Redraw, %NinbPic%
    If (NinbSize = 0)
    {
    Gui, Show, X%NinbX% Y%NinbY% W318 H%NinbH%
    }
    If (NinbSize = 1)
    {
    Gui, Show, X%NinbX% Y%NinbY% W380 H%NinbH%
    }
    WinActivate, Minecraft
}

Show()
{
    Loop
    {
        FileGetTime, FileTime, %NinbPic%, M
        FileGetSize, PicSize, %NinbPic%, K
    
            If (oldFileTime <> FileTime)
            {
                Gui, Destroy
                If (5 <= PicSize)
                {
                    ninbdisplay()
                    oldFileTime := FileTime
                }
            }
        Gui, Submit, NoHide
    }
}

GuiShowHide()
{
    If (Dummy = False)
    {
    WinShow, NinbMacro
    Dummy := True
    Return
    }

    If (Dummy = True)
    {
    WinHide, NinbMacro
    Dummy := False
    Return
    }
}

#IfWinActive, Minecraft
{
    Show()
    J:: GuiShowHide()  ;NinbPic Show/Hide
}
