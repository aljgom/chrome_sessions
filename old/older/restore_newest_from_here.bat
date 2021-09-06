@echo off
cls
echo *******************************************************************************************
echo.
echo ** Killing Chrome
	C:\Windows\System32\taskkill.exe -f -im chrome.exe
echo.
echo.

    timeout 2
echo *******************************************************************************************
echo.
echo ** Copying Session from here into Chrome directory
echo.
	del "%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Sessions\Session_*"
	del "%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Sessions\Tabs_*"
    :: all files are copied, but when resotoring, Chrome uses the newest files
    robocopy "%CD%" "%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Sessions" "Session_*" "Tabs_*"
echo.
echo.

timeout 2
echo *******************************************************************************************
echo.
echo ** Starting Chrome
echo.
    "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
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