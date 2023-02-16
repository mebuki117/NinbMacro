; Settings
global ProjectorName := "Fullscreen Projector (Source) - Ninb" ; OBS Projector Name
global NinbPic := "C:\Users\PC_User\AppData\Local\Temp\nb-overlay.png"   ; OBS overlay image path
global pic_x := 0
global pic_y := 0
global pic_width := 320
global pic_height := 236

global oldFileTime := 0  ;Do not change


; Main
WinMove, % ProjectorName,, 0, 0, pic_width, pic_height
WinSet, AlwaysOnTop, On, %ProjectorName%

Loop {
    FileGetTime, FileTime, %NinbPic%, M
    FileGetSize, PicSize, %NinbPic%, K
    
        If (oldFileTime <> FileTime) {
            WinGetPos, X, Y, Width, Height, %ProjectorName%
            If (5 <= PicSize) {
                If (Width = 0 and Height = 0) {
                    WinMove, % ProjectorName,, pic_x, pic_y, pic_width, pic_height
                    oldFileTime := FileTime
                }
            }
            ELse
                WinMove, % ProjectorName,, pic_x, pic_y, 0, 0
        }
}

