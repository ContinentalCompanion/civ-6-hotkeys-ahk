;;;;;;;;;;;;
;; Config ;;
;;;;;;;;;;;;

#NoEnv                       ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn                        ; Enable warnings to assist with detecting common errors.
SendMode Input               ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;
;; Imports ;;
;;;;;;;;;;;;;

#include window/window.vars.ahk
#Include window/window.ahk

;;;;;;;;;;
;; Test ;;
;;;;;;;;;;

F1::
FindButton(attackIcon, "unit")
return

F2::
FindButton(attackIcon, "city")
return
