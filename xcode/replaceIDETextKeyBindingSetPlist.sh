cp /Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Versions/A/Resources/IDETextKeyBindingSet.plist xcode/IDETextKeyBindingSet.plist.bak
git add xcode/IDETextKeyBindingSet.plist.bak
git ci "backup: xcode/IDETextKeyBindingSet.plist.bak"
sudo cp xcode/IDETextKeyBindingSet.plist /Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Versions/A/Resources/IDETextKeyBindingSet.plist 
