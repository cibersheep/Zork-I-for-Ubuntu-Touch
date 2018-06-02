import QtQuick 2.4
import Ubuntu.Components 1.3
 
Flickable {
    id: help
    anchors.fill: parent
    contentHeight: helpFile.height + units.gu(5)
	Column {
		id: helpFile
		spacing: units.gu(2)
		width: parent.width - units.gu(10)
		anchors.horizontalCenter: parent.horizontalCenter
		
		HelpLabel    { text: "Useful commands:" }
		HelpText     { text: "The <b>'BRIEF'</b> command suppresses printing of long room descriptions for rooms which have been visited. The <b>'SUPERBRIEF'</b> command suppresses printing of long room descriptions for all rooms.  The <b>'VERBOSE'</b> command restores long descriptions." }
		HelpText     { text: "The <b>'INFO'</b> command prints information which might give some idea of what the game is about." }
		HelpText     { text: "The <b>'QUIT'</b> command prints your score and asks whether you wish to continue playing." }
		HelpText     { text: "The <b>'SAVE'</b> command saves the state of the game for later continuation." }
		HelpText     { text: "The <b>'RESTORE'</b> command restores a saved game." }
		HelpText     { text: "The <b>'INVENTORY'</b> command lists the objects in your possession." }
		HelpText     { text: "The <b>'LOOK'</b> command prints a description of your surroundings." }
		HelpText     { text: "The <b>'SCORE'</b> command prints your current score and ranking." }
		HelpText     { text: "The <b>'TIME'</b> command tells you how long you have been playing." }
		HelpText     { text: "The <b>'DIAGNOSE'</b> command reports on your injuries, if any." }
		
		HelpLabel    { text: "Command abbreviations:" }
		HelpText     { text: "The <b>'INVENTORY'</b> command may be abbreviated <b>'I'</b>." }
		HelpText     { text: "The <b>'LOOK'</b> command may be abbreviated <b>'L'</b>." }
		HelpText     { text: "The <b>'QUIT'</b> command may be abbreviated <b>'Q'</b>." }
		
		HelpLabel    { text: "Containment:" }
		HelpText     { text: "Some objects can contain other objects. Many such containers can be opened and closed. The rest are always open. They may or may not be transparent. For you to access (e.g., take) an object which is in a container, the container must be open. For you to see such an object, the container must be either open or transparent. Containers have a capacity, and objects have sizes; the number of objects which will fit therefore depends on their sizes. You may put any object you have access to (it need not be in your hands) into any other object. At some point, the program will attempt to pick it up if you don't already have it, which process may fail if you're carrying too much. Although containers can contain other containers, the program doesn't access more than one level down." }

		HelpLabel    { text: "Fighting:" }
		HelpText     { text: "Occupants of the dungeon will, as a rule, fight back when attacked. In some cases, they may attack even if unprovoked. Useful verbs here are <b>'ATTACK <villain> WITH <weapon>'</b>, <b>'KILL'</b>, etc. Knife-throwing may or may not be useful. You have a fighting strength which varies with time. Being in a fight, getting killed, and being injured all lower this strength. Strength is regained with time. Thus, it is not a good idea to fight someone immediately after being killed. Other details should become apparent after a few melees or deaths." }

		HelpLabel    { text: "Command parser:" }
		HelpText     { text: "A command is one line of text terminated by a carriage return. For reasons of simplicity, all words are distinguished by their first nine letters. All others are ignored. For example, typing <b>'DISASSEMBLE THE ENCYCLOPEDIA'</b> is not only meaningless, it also creates excess effort for your fingers. Note that this truncation may produce ambiguities in the interpretation of longer words." }
		HelpText     { text: "You are dealing with a fairly stupid parser, which understands the following types of things--" }
		HelpText     { text: "Actions: " }
		HelpTextSang { text: "Among the more obvious of these, such as TAKE, PUT, DROP, etc. Fairly general forms of these may be used, such as PICK UP, PUT DOWN, etc." }
		HelpText     { text: "Directions: " }
		HelpTextSang { text: "NORTH, SOUTH, UP, DOWN, etc. and their various abbreviations. Other more obscure directions (LAND, CROSS) are appropriate in only certain situations." }
		HelpText     { text: "Objects: " }
		HelpTextSang { text: "Most objects have names and can be referenced by them." }
		HelpText     { text: "Adjectives: " }
		HelpTextSang { text: "Some adjectives are understood and required when there are two objects which can be referenced with the same <b>'name'</b> (e.g., DOORs, BUTTONs)." }
		HelpText     { text: "Prepositions: " }
		HelpTextSang { text: "It may be necessary in some cases to include prepositions, but the parser attempts to handle cases which aren't ambiguous without. Thus <b>'GIVE CAR TO DEMON'</b> will work, as will <b>'GIVE DEMON CAR'</b>. <b>'GIVE CAR DEMON'</b> probably won't do anything interesting. When a preposition is used, it should be appropriate; <b>'GIVE CAR WITH DEMON'</b> won't parse." }
		HelpText     { text: "Sentences: " }
		HelpTextSang { text: "The parser understands a reasonable number of syntactic constructions. In particular, multiple commands (separated by commas) can be placed on the same line." }
		HelpText     { text: "Ambiguity: " }
		HelpTextSang { text: "The parser tries to be clever about what to do in the case of actions which require objects that are not explicitly specified. If there is only one possible object, the parser will assume that it should be used. Otherwise, the parser will ask. Most questions asked by the parser can be answered." }

	}
}
