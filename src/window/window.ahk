;;;;;;;;;;;;;;;;;;
;; Image Search ;;
;;;;;;;;;;;;;;;;;;

FindButton(img, action) {
    WinGetPos winX, winY, winW, winH, %windowTitle%  ; Get window pos and size
    SysGet borderX, 32                               ; Get OS border X size
    SysGet borderY, 33                               ; Get OS border Y size

    ; Unit Ribbon in bottom right
    if (action = "unit") {
        searchX1 := winX + winW - unitRibbonWidth - borderX
        searchY1 := winY + winH - unitRibbonHeight - borderY
        searchX2 := winX + winW - borderX
        searchY2 := winY + winH - borderY
    }

    ; City building menu on the right
    else if (action = "city") {

    }

    ; Find the button
    ImageSearch buttonX, buttonY, searchX1, searchY1, searchX2, searchY2, %img%
    
    ; Print debug info
    ; if (ErrorLevel = 2)
    ;     MsgBox Could not conduct the search.
    ; else if (ErrorLevel = 1)
    ;     MsgBox Icon could not be found on the screen.
    ; else
    ;     MsgBox The icon was found at %buttonX%x%buttonY%.
    ; ListVars
    
    return
}
