@echo off
:_start
	echo Reset Chrome V.1.2
	echo This will remove ALL personal data in the Chrome (Bookmarks and etc. even the extenstions!)
	echo Chrome will turn off
	echo.
	echo Copyright (C) 2014-2017 by LooneySJ., all rights reserved.
	pause
	taskkill /f /t /pid chrome.exe
	timeout 3
	goto _Work
:_Work
	echo Deleting all the information under Chrome folder...
	RD /s /q %USERPROFILE%\AppData\Local\Google\Chrome
	goto _exit
:_exit
	echo DONE :)
	pause
exit