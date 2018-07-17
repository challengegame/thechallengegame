EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)

VAR drink = ""

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Group

Kalil@140pm July 6, 2018;This is the first line of the chat. It is from Kalil, and will display immediately because it has no delay tag.
Jessie@141pm July 6, 2018;This line will display 5 seconds after the first, because it has delay of 5. It will display regardless of whether the player has seen the first. #delay=5
Player@145pm July 6, 2018;This line comes from the player, so it will not cause notifications, and will show in a different color. #delay=10
Player@145pm July 6, 2018;We will probably want to wait until the player has seen the previous texts, or aknowledged them, before displaying player messages #delay=1
Hema@145pm July 6, 2018;A line from a different character. This will play 17 seconds after starting the game (5+10+1+1) #delay=1
* [The first option in a choice]
Player@147pm July 6, 2018; This is what the player will say if they choose the first option.
	* * [The first option in a second choice]
	Player@147pm July 6, 2018; This is what the player will say if they choose the first option in both choices. The indentation is optional, but makes reading easier.
	* * [The second option in the second choice]
	Player@147pm July 6, 2018; This choice is only for flavor, and doesn't change the flow, so we will do a gather next
	- -
	Hema@145pm July 6, 2018; This line will play if the player chooses option 1 in the first choice, regardless of their second choice. #delay=1
	#delay=5
	Jessie@141pm July 6, 2018; After this line, we will divert to a knot, to keep things organized.
	
* [The second option in the choice]
Player@147pm July 6, 2018; This is what the player will say if they choose the second option in the first choice. We will divert to the knot now.
#delay=5
- 
Jessie@149pm July 6, 2018; Here we are after the gather. What do you like to drink? -> knot 
=== knot ===
* [OJ]
Player@147pm July 6, 2018; I like OJ. Let's set a variable to determine that.
~ drink = "OJ"
* [Soda]
Player@147pm July 6, 2018; Actually I prefer soda.
~ drink = "Soda"
-
{ drink == "OJ" :
	Jessie@141pm July 6, 2018;Oh, I like soda myself. {RelationshipChange("Jessie", -1)} #delay=1
- else:
	Jessie@141pm July 6, 2018;Right on, me too! {RelationshipChange("Jessie", 1)} #delay=1
}
{ GetRelationshipValue("Jessie") > 0 :
	Jessie@141pm July 6, 2018;You're so cool! <sprite name="Smile"> #delay=1
- else:
	Jessie@141pm July 6, 2018;I don't like you very much. <sprite name="Frown"> #delay=1
}

-> END