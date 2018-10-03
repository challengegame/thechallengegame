EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)
EXTERNAL PlayerName()
EXTERNAL PlayerPersonalPronoun()
EXTERNAL PlayerPossessivePronoun()
EXTERNAL PlayerObjectivePronoun()
EXTERNAL SetPartyAnetta(party)

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Kyle

Kyle;Hello! #time=5:20:13:00
Kyle;This is Kyle. From school? #time=5:20:13:04
Kyle;My picture should be in the top-left. #time=5:20:13:08
Kyle;I am a very generic white guy, so I wouldn't blame you if you dont remember me. #time=5:20:13:13
Kyle;Anyway--I'm holding a party tomorrow! #time=5:20:13:17
Kyle;I finished sending out invitations this morning #time=5:20:13:21
Kyle;(though we both know full well people are going to sneak in) #time=5:20:13:25
Kyle;Tanya wanted me to make an exception though #time=5:20:13:29
Kyle;I'm happy to make it too. Heard a lot about you. #time=5:20:13:32
Kyle;All positive :) #time=5:20:13:35
Kyle;longstoryshortblahblahblah--you're invited! #time=5:20:13:39
Kyle;Show this text thread at the front door and they'll let you right in. #time=5:20:13:43
Kyle;It will be nice to have you there. #time=5:20:13:48
* [I'm excited to come!]
Player;I'm excited to come! #time=5:20:13:53
Kyle;That's the spirit! #time=5:20:13:56
Kyle;Gonna be dope :) #time=5:20:14:00
Player;<sprite name="Party"> #time=5:20:14:03


* [Sorry about the things I said...]
Player;Thank you! And sorry about the things I said earlier... #time=5:20:13:53
Kyle;What things did you say? #time=5:20:13:56
Player;Um--nothing. My mistake! #time=5:20:14:00
Kyle;haha. okay :'D #time=5:20:14:03
-
Kyle;Alright #time=5:20:14:08
Kyle;one more thing #time=5:20:14:12
Kyle;(I promise) #time=5:20:14:15
Kyle;Tanya also asked if you could have a +1 #time=5:20:14:19
Kyle;(of course i said yes) #time=5:20:14:23
Kyle;According to my Handy Spreadsheet, I already invited Hema and Jessie. They're cool. #time=5:20:14:27
Kyle;The other people in your group are... #time=5:20:14:32
Kyle;Kalil and Anetta, right? #time=5:20:14:40
Kyle;Which of them would you like to bring along tomorrow? #time=5:20:14:45
Kyle;I don't mind either way. #time=5:20:14:49
Kyle;From what Tanya says, they both sound cool! #time=5:20:14:53
	* * [I'm bringing Kalil.]
	Player;I'll be bringing Kalil. #time=5:20:14:56
	Player;The group has been a bit fractured lately--especially where he's concerned--and I think this is exactly what we need to stick together. #time=5:20:15:05
	Kyle;Wow. #time=5:20:15:10
	Kyle;That's a lot. #time=5:20:15:15
	Kyle;I'm not exactly sure what 14 bags of crisps will do for your friendship... #time=5:20:15:19
	Kyle;but I hope it helps! :D #time=5:20:15:23
	{SetPartyAnetta(false)}
	
	
	* * [I'm bringing Anetta.]
	Player;I'm bringing Anetta. #time=5:20:14:56
	Player;She could really use the support right now--emotionally and mentally. I think our recent rough patch as a group has been particularly rough for her. #time=5:20:15:05
	Kyle;Wow. #time=5:20:15:10
	Kyle;That's a lot. #time=5:20:15:15
	Kyle;I'm not exactly sure what 14 bags of crisps will do for her state of affairs... #time=5:20:15:19
	Kyle;but I hope it helps! :D #time=5:20:15:23
	{SetPartyAnetta(true)}
	- -
	Kyle;I think that's everything! #time=5:20:15:27
	Kyle;Take care of yourself. :) #time=5:20:15:31

-> END