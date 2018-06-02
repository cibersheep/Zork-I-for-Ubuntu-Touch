import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2
import com.canonical.Oxide 1.0 as Oxide
import Qt.labs.settings 1.0

import BackUp 1.0

import "components"
MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'zork-i-en.cibersheep'

    automaticOrientation: true
    anchorToKeyboard: true

    anchors.fill: parent

	property bool nightMode: false
	property string lighterColor: "#333333"
	property string darkColor: "#efefef"

	property var settings: Settings {
        property bool hasUpdated: false
    }	
    Page {
        id: page
        anchors {
            fill: parent
            bottom: parent.bottom
        }
        width: parent.width
        height: parent.height

        header: AppHeader {
            id: header
            title: "Zork"
        }

        WebContext {
            id: webcontext
            userAgent: 'Mozilla/5.0 (Linux; Android 5.0; Nexus 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36 Ubuntu Touch Webapp'
            userScripts: [
                Oxide.UserScript {
                    context: 'oxide://main-world'
                    emulateGreasemonkey: true
                    url: Qt.resolvedUrl('injectcss.js')
                },
                Oxide.UserScript {
                        context: "messaging://"
                        url: Qt.resolvedUrl("message.js")
                    }
            ]
        }

        WebView {
            id: webview
            anchors {
                top: header.visible ? header.bottom : parent.top
                bottom: parent.bottom
            }
            width: parent.width
            height: parent.height

            context: webcontext
            url: 'www/index.html'
            preferences.localStorageEnabled: true
            preferences.appCacheEnabled: true

            Component.onCompleted: {
                preferences.localStorageEnabled = true;
            }
        }

        ProgressBar {
            height: units.dp(3)
            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
            }

            showProgressPercentage: false
            value: (webview.loadProgress / 100)
            visible: (webview.loading && !webview.lastLoadStopped)
        }

        function executeJavaScript(code) {
			var req = webview.rootFrame.sendMessage("messaging://", "EXECUTE", {code: code});
			req.onerror = function (code, explanation) {
				console.log("Error " + code + ": " + explanation)
			}
		}
    }
    
    HideHeader {}
    Component {
		id: aboutPage
		About {
			anchors.fill: parent
		}
	}
	
	Component.onCompleted: {
		if (!settings.hasUpdated) { 
			BackUp.backUpLocalStore("file__0.localstorage", "__0.localstorage") 
			settings.hasUpdated = true
		}

	}
}
