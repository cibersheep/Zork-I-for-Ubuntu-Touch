import QtQuick 2.4
import Ubuntu.Components 1.3
 
Text {
	width: parent.width
	horizontalAlignment: Text.AlignJustify
	wrapMode: Text.WrapAtWordBoundaryOrAnywhere
	color: nightMode ? darkColor : lighterColor
	onLinkActivated: Qt.openUrlExternally(link)
	linkColor: UbuntuColors.blue
}
