JsOsaDAS1.001.00bplist00�Vscript_�ObjC.import('stdio')
App = Application.currentApplication()
App.includeStandardAdditions = true
App.displayDialog('This script will attempt to repair SourceKit. Please save all work in Xcode and hit OK to start. Once complete, Xcode will be restarted.', {
	withTitle: 'SourceKit Repair Tool'
})
Xcode = Application('Xcode')
Xcode.quit()
App.doShellScript('cd ~/Library/Developer/Xcode/DerivedData; rm -rf *')
Xcode.open()                              � jscr  ��ޭ