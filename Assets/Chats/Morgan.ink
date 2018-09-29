EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)
EXTERNAL PlayerName()
EXTERNAL PlayerPersonalPronoun()
EXTERNAL PlayerPossessivePronoun()
EXTERNAL PlayerObjectivePronoun()

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Morgan

VAR sayHemaDrunk = true


Morgan;{PlayerName()}! I am so sorry I missed your call. Phones these days are always missing something for one reason or another. #time=6:22:03:50
Morgan;<sprite name="Tongue_Out"> What's going on? #time=6:22:03:53
*[It's fine!]
    Player;It's fine! #time=6:22:03:56
    Player;I just wanted to ask if you could pick Hema up from the party. #time=6:22:03:59
    Morgan;Of course! Thank you for reaching out. She left me the address, so I'll be right over. #time=6:22:04:02
*[No problem! Nuh-uh.]
    Player;No problem ms. morgan! nuh-uh. nothing going here. #time=6:22:03:56
    Player;Do you think you could pick Hema up from the party though? #time=6:22:03:59
    Morgan;Of course! Thank you for reaching out. She left me the address, so I'll be right over. #time=6:22:04:04
-
Morgan;One small question while I prepare to leave... #time=6:22:04:08
Morgan;Why isn't Hema contacting me directly? #time=6:22:04:17
Morgan;Is she alright? #time=6:22:04:24
*[She drank a lot...]
    Player;She did have a lot to drink... #time=6:22:04:28
    Player;I thought you should know. #time=6:22:04:31
	Player;Just in case #time=6:22:04:35
    Morgan;Thank you for telling me {PlayerName()}. #time=6:22:04:40
    Morgan;Ill have a talk with Hema in the morning. #time=6:22:04:44
	Morgan;ill #time=6:22:04:47
	Morgan;i hope you know what I mean #time=6:22:04:54
    ~ sayHemaDrunk = true
	
	
*[Yeah. Just a long night.]
    Player;Yeah. it's just been a long night... #time=6:22:04:28
    Player;We're all a bit tired, so I thought I'd text you. #time=6:22:04:31
	Player;In case of phone battery failures and connection issues and all that. #time=6:22:04:35
    Morgan;That was very smart of you. #time=6:22:04:40
    Morgan;Yu're a good friend {PlayerName()}. #time=6:22:04:44
	Morgan;Youre #time=6:22:04:47
	Morgan;i hope you know what I mean #time=6:22:04:54
    ~ sayHemaDrunk = false
-
Morgan;I should be there in fifteen minutes #time=6:22:04:57
Morgan;Do you need a ride as well? #time=6:22:05:01
*[No, I'm fine.]
    Player;No, I'm fine. #time=6:22:05:04
    Player;Kyle's house is right next to a station so I was planning to get the tube home. #time=6:22:05:07
    Player;I could use the walk! #time=6:22:05:10
    Morgan;Alright. Just let me know if you change your mind! #time=6:22:05:16
	Morgan;<sprite name="Party"> On my way. #time=6:22:05:42
*[Yes, please.]
    Player;Yes, please. That would actually be great. #time=6:22:05:04
    Morgan;Of course!#time=6:22:05:07
    Morgan;I wouldn't want you walking alone at night. #time=6:22:05:12
    Morgan;I'll be there soon! #time=6:22:05:16
	Morgan;<sprite name="Party"> #time=6:22:05:33
-
->END