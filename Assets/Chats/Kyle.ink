EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)
EXTERNAL PlayerName()
EXTERNAL PlayerPersonalPronoun()
EXTERNAL PlayerPossessivePronoun()
EXTERNAL PlayerObjectivePronoun()
EXTERNAL SetPartyAnetta(party)

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Kyle

Kyle: Who are you taking to the party?
* [Anetta]
Player: Probably Anetta {SetPartyAnetta(true)}
* [Kalil]
Player: Kalil is my bestie {SetPartyAnetta(false)}


-> END