Set oShell = CreateObject ("Wscript.Shell") 

strPath = Wscript.ScriptFullName
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.GetFile(strPath)
strFolder = objFSO.GetParentFolderName(objFile) 

Dim strArgs
quo = """"
strArgs = quo & strFolder & "/FirefoxPortable.exe" & quo
oShell.Run strArgs, 0, false
strArgs = quo & strFolder & "/lantern.exe" & quo
oShell.Run strArgs, 0, false