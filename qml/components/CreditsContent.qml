import QtQuick 2.4
import Ubuntu.Components 1.3
 
Flickable {
    id: help
    anchors.fill: parent
    contentHeight: creditsFile.height + units.gu(5)
	Column {
		id: creditsFile
		spacing: units.gu(2)
		width: parent.width - units.gu(10)
		anchors.horizontalCenter: parent.horizontalCenter
		UbuntuShape {
			id: icon
			width: units.gu(17)
			height: width
			backgroundColor: darkColor
			anchors.horizontalCenter: parent.horizontalCenter
			aspect: UbuntuShape.Flat
			source: Image {
				source: "../../assets/logo.svg"
				sourceSize.width: icon.width
				sourceSize.height: icon.width
			}
		}
		HelpLabel    { text: "About Ubuntu Touch Zork App" }
		HelpLabel    { text: "Version 1.0.0" }
		HelpText     { text: "App Maintainement"; font.bold: true }
		HelpText     { text: "Joan CiberSheep" }
		HelpText     { text: "Zork (MIT licensed version) ©1979"; font.bold: true }
		HelpText     { text: "<a href='http://ifdb.tads.org/viewgame?id=4gxk83ja4twckm6j'>by Tim Anderson, Marc Blank, Bruce Daniels, Dave Lebling</a>" }
		HelpText     { text: "This is the forbear of the Zork trilogy, written at MIT before Infocom was formed. The first game to feature a full-sentence parser, albeit a crude one by today's standards. Very derivative of Adventure, from the maze of twisty little passages to the orange smoke that accompanies ressurrection. Basically, a treasure hunt in a cave. Two mazes (counting the coal mine), a little randomized combat, and a nonsense puzzle or two. Much historical interest, however. Nearly everything in this game can be found in the Zork trilogy, although some crucial details are different. Available in various stages of its development; unlike Adventure, which used a very rigid database, this game was designed to be easy to modify, and got modified a lot. -- Carl Muckenhoupt" }
		HelpText     { text: "Code Used"; font.bold: true }
		HelpTextSang { text: "<b>Parchment</b> by <a href='https://github.com/curiousdannii/parchment'>curiousdannii</a>" }
		HelpTextSang { text: " with modifications by <a href='https://github.com/cibersheep/parchment'>CiberSheep</a>"}
		HelpTextSang { text: "<b>Habitica Ubuntu Touch</b> base code by <a href='http://github.com/bhdouglass/habitica-ubuntu-touch'>Brian Douglass</a>"}
		HelpText     { text: "Tools"; font.bold: true }
		HelpTextSang { text: "<b>Clickable</b> by <a href='http://clickable.bhdouglass.com'>Brian Douglass</a>" }
		HelpTextSang { text: "<b>Inkscape</b> <a href='https://inkscape.org'>vector graphic tool</a>" }
		HelpText     { text: "App License"; font.bold: true }
		HelpTextSang { text: "<b>MIT</b> <a href='https://opensource.org/licenses/MIT'>https://opensource.org/licenses/MIT</a>" }
	}
}
