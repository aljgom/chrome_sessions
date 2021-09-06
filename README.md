## Chrome Sessions

Chrome saves your current session as well as your last session in the User Data folder

With these bat scripts you can copy those sessions into here to back them up, as well as restore the current or older session that you have saved

copy_to_here.bat copies the Session_* and Tabs_* files into this folder, and moves previous versions into the "old" and "older" folder, so there's a few versions saved

You can use "restore_newest_from_here.bat" and it will restore the newest session from that folder

I haven't update the demo video, but it should be basically the same, except now there is no "restore_last.bat" script, but to restore previous sessions you can run "restore_from_here.bat" from the "/old" and "/older" folders

![demo](https://github.com/aljgom/chrome_sessions/blob/master/demo_video/demo.gif)
