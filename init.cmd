@echo off
REM === Linux-style aliases for Windows CMD ===

doskey ll=dir >nul
doskey ls=dir >nul
doskey clear=cls >nul
doskey pwd=cd >nul
doskey cp=copy $* >nul
doskey mv=move $* >nul
doskey rm=del $* >nul
doskey mkdir=mkdir $* >nul
doskey rmdir=rmdir $* >nul
doskey touch=type nul > $* >nul
doskey cat=type $* >nul
doskey grep=findstr $* >nul
doskey echo=echo $* >nul
doskey whoami=whoami >nul
doskey ifconfig=ipconfig >nul
doskey ping=ping $* >nul
doskey top=tasklist >nul
doskey ps=tasklist >nul
doskey kill=taskkill /PID $* /F >nul
doskey man=echo No man pages in cmd. Use Google :) >nul
doskey history=doskey /history >nul
