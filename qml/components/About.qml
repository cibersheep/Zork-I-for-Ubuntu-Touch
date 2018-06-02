/*
 */

import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
 
PopupBase {
    id: about

	Page{ 
		header: PageHeader {
				id: aboutHeader
				title: "About"
				StyleHints {
					foregroundColor: nightMode ? darkColor : lighterColor
					backgroundColor: nightMode ? lighterColor : darkColor
					divider.color: nightMode ? lighterColor : darkColor
					divider.visible: false
				}
				extension: 	Sections {
								actions: [
									Action {
										text: "Welcome!"
										onTriggered: {
											welcome.visible = true
											help.visible = credits.visible = false
										}
									},
									Action {
										text: "Commands"
										onTriggered: {
											help.visible = true
											welcome.visible = credits.visible = false
										}
									},
									Action {
										text: "Credits"
										onTriggered: {
											credits.visible = true
											welcome.visible = help.visible = false
										}
									}
								]
							}
 
				leadingActionBar {
						numberOfSlots: 1
						actions: [
							Action {
								id: actionMenu
								iconName: "back"
								shortcut: "Ctrl+b"
								text: i18n.tr("&Back")
								onTriggered: {
									Qt.inputMethod.hide();
									hide()
								}
							}
						]
					}
			}
		
		Rectangle {
			anchors.fill: parent
			color: nightMode ? lighterColor : darkColor
			WelcomeContent {
				id: welcome
				anchors.topMargin: aboutHeader.height + units.gu(5)
			}
			HelpContent {
				id: help
				visible: false
				anchors.topMargin: aboutHeader.height + units.gu(5)
			}
			CreditsContent {
				id: credits
				visible: false
				anchors.topMargin: aboutHeader.height + units.gu(5)
			}
		}
	}
	
    function closingPop() {
		hide()
    }
    
    Component.onCompleted: {
        show()
    }
    
    Component.onDestruction: {
		//To be used when PopupBase is closed
		console.log("Popup destroyed")
    }

}
