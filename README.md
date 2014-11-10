sourcekit-repair-tool
=====================

This simple tool automates the task of repairing SourceKit/code completion in Xcode 6.1, which is notorious for crashing unexpectedly (or just not working) while developing in Swift.

Written in JavaScript for Automation and compiled to an application. Tested on OS X Yosemite 10.10 (14A389). Full source code of the script below since GitHub displays the source file as raw.

```
ObjC.import('stdio') // In case logging or other ObjC functions are needed
App = Application.currentApplication()
App.includeStandardAdditions = true
App.displayDialog('This script will attempt to repair SourceKit. Please save all work in Xcode and hit OK to start. Once complete, Xcode will be restarted.', {
	withTitle: 'SourceKit Repair Tool'
})
Xcode = Application('Xcode')
Xcode.quit()
App.doShellScript('cd ~/Library/Developer/Xcode/DerivedData; rm -rf *')
Xcode.activate()
```
