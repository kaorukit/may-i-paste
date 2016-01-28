set strClip to get the clipboard
set asciiCr to ASCII character 13
set findCr to offset of asciiCr in strClip

if findCr = 0 then
    tell application "System Events" to keystroke "v" using {command down}
else if findCr > 0 then
    set EditTxt to the text returned of (display dialog "may i paste?" default answer strClip)
    set the clipboard to EditTxt
    tell application "System Events" to keystroke "v" using {command down}
end
