@echo off
cls

echo *******************************************************************************************
echo.
echo ** Backing up \old\ to \old\older\
echo.
	move "%CD%\old\Session_*" "%CD%\old\older\" 
	move "%CD%\old\Tabs_*" "%CD%\old\older\" 
echo.
echo.

echo ** Backing up .\ to \old\
echo.
	move "%CD%\Session_*" "%CD%\old\" 
	move "%CD%\Tabs_*" "%CD%\old\" 
echo.
echo.

	timeout 1
echo *******************************************************************************************
echo.
echo ** Killing Chrome
	C:\Windows\System32\taskkill.exe -f -im chrome.exe
echo.
echo.

	timeout 3
echo *******************************************************************************************
echo.
echo ** Copying Session from Chrome directory into here
echo.
	robocopy "%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Sessions" "%CD%" "Session_*" "Tabs_*"
echo.
echo.

echo *******************************************************************************************
echo.
echo ** Done
echo.
	timeout 30




GOTO EndComment
	Robocopy Reference:

	/X : Report all eXtra files, not just those selected & copied.
        /V : Produce Verbose output log, showing skipped files.
	/XD dirs [dirs]... : eXclude Directories matching given names/paths.
	/E : Copy Subfolders, including Empty Subfolders.
	/XO : eXclude Older - if destination file exists and is the same date
           or newer than the source - don’t bother to overwrite it.
	/XX : eXclude "eXtra" files and dirs (present in destination but not source)
           This will prevent any deletions from the destination. (this is the default)
	/MIR : MIRror a directory tree - equivalent to /PURGE plus all subfolders (/E)
	/L only list dont copy
	/XF file [file]... : eXclude Files matching given names/paths/wildcards.
	
:EndComment