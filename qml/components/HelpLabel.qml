import QtQuick 2.4
import Ubuntu.Components 1.3
 
Label {
	font.bold: true
	font.pixelSize: units.gu(2)
	anchors.horizontalCenter: parent.horizontalCenter
	color: nightMode ? darkColor : lighterColor
}
