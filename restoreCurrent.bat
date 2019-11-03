GOTO EndComment

	D:\Users\gomez14\Dropbox\Traducciones\Alejo\isws\isws.bat
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

cls
C:\Windows\System32\taskkill.exe -f -im chrome.exe

timeout 1

robocopy "%CD%" "%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default" "Current Session" "Current Tabs"

"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
