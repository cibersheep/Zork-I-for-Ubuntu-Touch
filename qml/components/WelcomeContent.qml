import QtQuick 2.4
import Ubuntu.Components 1.3
 
Flickable {
    id: help
    anchors.fill: parent
    contentHeight: welcomeFile.height + units.gu(5)
	Column {
		id: welcomeFile
		spacing: units.gu(2)
		width: parent.width - units.gu(10)
		anchors.horizontalCenter: parent.horizontalCenter
		UbuntuShape {
			id: logo
			width: units.gu(40)
			height: width * .426
			backgroundColor: darkColor
			anchors.horizontalCenter: parent.horizontalCenter
			aspect: UbuntuShape.Flat
			source: Image {
				source: "../../assets/zork-splash.svg"
				sourceSize.width: logo.width
				sourceSize.height: logo.width
			}
		}
		HelpLabel    { text: "Welcome to ZORK!" }
		HelpText     { text: "You are near a large dungeon, which is reputed to contain vast quantities of treasure. Naturally, you wish to acquire some of it. In order to do so, you must of course remove it from the dungeon. To receive full credit for it, you must deposit it safely in the trophy case in the living room of the house." }
		HelpText     { text: "In addition to valuables, the dungeon contains various objects which may or may not be useful in your attempt to get rich. You may need sources of light, since dungeons are often dark, and weapons, since dungeons often have unfriendly things wandering about. Reading material is scattered around the dungeon as well; some of it is rumored to be useful." }
		HelpText     { text: "To determine how nightMode you have been, a score is kept. When you find a valuable object and pick it up, you receive a certain number of points, which depends on the difficulty of finding the object. You receive extra points for transporting the treasure safely to the living room and placing it in the trophy case. In addition, some particularly interesting rooms have a value associated with visiting them. The only penalty is for getting yourself killed, which you may do only twice." }
		HelpText     { text: "Of special note is a thief (always carrying a large bag) who likes to wander around in the dungeon (he has never been seen by the light of day). He likes to take things. Since he steals for pleasure rather than profit and is somewhat sadistic, he only takes things which you have seen. Although he prefers valuables, sometimes in his haste he may take something which is worthless. From time to time, he examines his take and discards objects which he doesn't like. He may occasionally stop in a room you are visiting, but more often he just wanders through and rips you off (he is a skilled pickpocket)." }

	}
}
