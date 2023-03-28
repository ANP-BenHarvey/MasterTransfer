@Echo off
COLOR 0A
@echo.

@echo Script Created By: Chad Reich
@echo Script Version: 2.0.0.2
@echo.

@ECHO OFF
CLS
@echo.
@echo Please select an option for your computer migration.
@echo.
ECHO 1.Copy your data to your hard drive.
@echo.
ECHO 2.Transfer your data from your hard drive you your new computer.
@echo.
@echo.
@echo.

CHOICE /C 12 /M "Please Enter your choice for the data migration process:"

IF ERRORLEVEL 2 GOTO Data_Transfer
IF ERRORLEVEL 1 GOTO Data_Copy

:Data_Copy
	ECHO Data Copy
	@Echo off
	COLOR 0B
	@echo.

	@echo off
	set /p id=Please Enter The Drive Letter To Copy Your Data to: 
	echo %id%

	@echo.
	Robocopy "C:\Users\%username%\AppData\Local\Microsoft\OneNote\version\Backup" "%id%\Users\%username%\AppData\Local\Microsoft\OneNote\version\Backup" /E /Z /R:0 /W:0
	@echo.
	@echo OneNote Completed
	@echo

	@echo.
	Robocopy "C:\Users\%username%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" "%id%:\%username%\Taskbar" /E /Z /R:0 /W:0
	@echo.
	@echo Taskbar Completed
	@echo.

	@echo.
	Robocopy "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Bookmarks" "%id%:\%username%\Chrome" /E /Z /R:0 /W:0
	@echo.
	@echo Chrome Completed
	@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Contacts" "%id%:\%username%\Contacts" /E /Z /R:0 /W:0
	@echo.
	@echo Contacts Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Contacts" "%id%:\%username%\Contacts" /E /Z /R:0 /W:0
		@echo.
		@echo Contacts Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Desktop" "%id%:\%username%\Desktop" /E /Z /R:0 /W:0
	@echo.
	@echo Desktop Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Desktop" "%id%:\%username%\Desktop" /E /Z /R:0 /W:0
		@echo.
		@echo Desktop Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Downloads" "%id%:\%username%\Downloads" /E /Z /R:0 /W:0
	@echo.
	@echo Downloads Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Downloads" "%id%:\%username%\Downloads" /E /Z /R:0 /W:0
		@echo.
		@echo Downloads Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Favorites" "%id%:\%username%\Favorites" /E /Z /R:0 /W:0
	@echo.
	@echo Favorites Completed
	@echo.

		@echo.
		Robocopy "C:\Documents and Settings\%username%\Favorites" "%id%:\%username%\Favorites" /E /Z /R:0 /W:0
		@echo.
		@echo Favorites Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Links" "%id%:\%username%\Links" /E /Z /R:0 /W:0
	@echo.
	@echo Links Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Links" "%id%:\%username%\Links" /E /Z /R:0 /W:0
		@echo.
		@echo Links Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Documents" "%id%:\%username%\Documents" /E /Z /R:0 /W:0
	@echo.
	@echo Documents Completed
	@echo.

		@echo.
		Robocopy "C:\Documents and Settings\%username%\Documents" "%id%:\%username%\Documents" /E /Z /R:0 /W:0
		@echo.
		@echo Documents Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Music" "%id%:\%username%\Music" /E /Z /R:0 /W:0
	@echo.
	@echo Music Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Music" "%id%:\%username%\Music" /E /Z /R:0 /W:0
		@echo.
		@echo Music Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Pictures" "%id%:\%username%\Pictures" /E /Z /R:0 /W:0
	@echo.
	@echo Pictures Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Pictures" "%id%:\%username%\Pictures" /E /Z /R:0 /W:0
		@echo.
		@echo Pictures Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Videos" "%id%:\%username%\Videos" /E /Z /R:0 /W:0
	@echo.
	@echo Videos Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Videos" "%id%:\%username%\Videos" /E /Z /R:0 /W:0
		@echo.
		@echo Videos Completed
		@echo.

	@echo.
	Robocopy "C:\Documents and Settings\%username%\Searches" "%id%:\%username%\Searches" /E /Z /R:0 /W:0
	@echo.
	@echo Searches Completed
	@echo.

		@echo.
		Robocopy "C:\Users\%username%\Searches" "%id%:\%username%\Searches" /E /Z /R:0 /W:0
		@echo.
		@echo Searches Completed
		@echo.

	@echo.
	Robocopy "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes" "%id%:\%username%\Theme" /E /Z /R:0 /W:0
	@echo.
	@echo Theme Completed
	@echo.



@echo.
reg export Hkey_Current_User\Network %id%:\%username%\Network_Drives.Reg
@echo.
@echo Mapped Drives Copied.
@echo.

@echo Your data has been copied press any key to close this window.
@echo Thank You.
pause > nul
exit


:Data_Transfer
	ECHO Data Transfer
	@Echo off
	COLOR 0E
	@echo.

	@echo off
	set /p id=Please Enter The Drive Letter To Transfer Your Data From: 
	@echo %id%

	@echo.
	Robocopy "%id%\Users\%username%\AppData\Local\Microsoft\OneNote\version\Backup" "C:\Users\%username%\AppData\Local\Microsoft\OneNote\version\Backup" /E /Z /R:0 /W:0
	@echo.
	@echo Taskbar Completed
	@echo

	@echo.
	Robocopy "%id%:\%username%\Taskbar" "C:\Users\%username%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" /E /Z /R:0 /W:0
	@echo.
	@echo Taskbar Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Chrome" "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Bookmarks" /E /Z /R:0 /W:0
	@echo.
	@echo Chrome Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Contacts" "C:\Users\%username%\Contacts" /E /Z /R:0 /W:0
	@echo.
	@echo Contacts Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Desktop" "C:\Users\%username%\Desktop" /E /Z /R:0 /W:0
	@echo.
	@echo Desktop Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Data Analysis System" "C:\Users\%username%\Data Analysis System" /E /Z /R:0 /W:0
	@echo.
	@echo Data Analysis System Completed
	@echo.

	@echo.
	Robocopy "%id%:%username%\Downloads" "C:\Users\%username%\Downloads" /E /Z /R:0 /W:0
	@echo.
	@echo Downloads Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Favorites" "C:\Users\%username%\Favorites" /E /Z /R:0 /W:0
	@echo.
	@echo Favorites Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Links" "C:\Users\%username%\Links" /E /Z /R:0 /W:0
	@echo.
	@echo Links Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Documents" "C:\Users\%username%\Documents" /E /Z /R:0 /W:0
	@echo.
	@echo Documents Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Music" "C:\Users\%username%\Music" /E /Z /R:0 /W:0
	@echo.
	@echo Music Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Pictures" "C:\Users\%username%\Pictures" /E /Z /R:0 /W:0
	@echo.
	@echo Pictures Completed.
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Videos" "C:\Users\%username%\Videos" /E /Z /R:0 /W:0
	@echo.
	@echo Videos Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Searches" "C:\Users\%username%\Searches" /E /Z /R:0 /W:0
	@echo.
	@echo Searches Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Theme" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes" /E /Z /R:0 /W:0
	@echo.
	@echo Theme Completed
	@echo.

	@echo.
	Robocopy "%id%:\%username%\Data" "C:\Users\%username%\AppData\Local\IBM\Notes\Data" /E /Z /R:0 /W:0
	@echo.
	@echo Notes Completed
	@echo.

	@echo.
	Regedit.exe /s /q %id%:\%username%\Network_Drives.Reg
	@echo.
	@echo Mapped Drives Copied.
	@echo.

@echo You will need to logoff your computer and log back in
@echo for settings to take effect. Press any key to continue.
@echo your computer will automatically log you off.
@echo Thank You.
pause > nul
@echo.
logoff.exe
@echo.

:END
