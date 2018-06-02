import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import Ubuntu.Content 1.3



PageHeader {
	title: root.title

	StyleHints {
		foregroundColor: nightMode ? darkColor : lighterColor
		backgroundColor: nightMode ? lighterColor : darkColor
		divider.color: nightMode ? lighterColor : darkColor
		divider.visible: false
	}
	
	trailingActionBar {
		numberOfSlots: 2
		actions: [
			Action {
				iconName: "info"
				text: i18n.tr("About")
				onTriggered: {
					Qt.inputMethod.hide()
					PopupUtils.open(aboutPage);
				}
			},
			Action {
				iconName: nightMode ? "display-brightness-min" : "night-mode"
				shortcut: "Ctrl+i"
				text: i18n.tr("Night Mode")
				onTriggered: {
					page.executeJavaScript("document.getElementById('body').classList.toggle('noct');")
					nightMode = !nightMode
				}
			}
		]
	}
	
}
