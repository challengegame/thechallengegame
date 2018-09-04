EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)
EXTERNAL PlayerName()
EXTERNAL PlayerPersonalPronoun()
EXTERNAL PlayerPossessivePronoun()
EXTERNAL PlayerObjectivePronoun()

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Morgan

VAR sayHemaDrunk = true


Morgan;Hello {PlayerName()}! #time=6:22:03:50
Morgan;Sorry, I just missed your call. #time=6:22:03:53
*[It's fine!]
    Player;It's fine! #time=6:22:03:56
    Player;Could you pick Hema up from the party? #time=6:22:03:59
    Morgan;Yes, of course I can. #time=6:22:04:02
*[No problem Ms. Morgan]
    Player;No problem Ms. Morgan. #time=6:22:03:56
    Player;Do you think you could pick Hema up from the party? #time=6:22:03:59
    Morgan;Yes, of course I can. #time=6:22:04:02
-
Morgan;Hema left the address with me, so I can come right over. #time=6:22:04:05
Morgan;Is she okay? #time=6:22:04:09
*[She drank a lot...]
    Player;She did have a lot to drink... #time=6:22:04:14
    Player;I thought it would be better for you to know. #time=6:22:04:17
    Morgan;Thank you for telling me, {PlayerName()}. #time=6:22:04:21
    Morgan;I'll have a talk with Hema in the morning. #time=6:22:04:24
    ~ sayHemaDrunk = true
*[Yeah, just a long night]
    Player;Yeah it's just been a long night... #time=6:22:04:14
    Player;We're all a bit tired, so I thought I'd text you. #time=6:22:04:17
    Morgan;That was a good idea. #time=6:22:04:21
    Morgan;Thank you {PlayerName()}. #time=6:22:04:24
    ~ sayHemaDrunk = false
-
Morgan;I should be there in fifteen minutes #time=6:22:04:35
Morgan;Do you need a ride as well? #time=6:22:04:38
*[No, I'm fine.]
    Player;No, I'm fine. #time=6:22:04:43
    Player;Kyle's house is right next to a station so I'll get the tube home. #time=6:22:04:46
    Player;I could use the walk. #time=6:22:04:49
    Morgan;Okay, let me know if you change your mind! #time=6:22:04:53
*[Yes, please.]
    Player;Yes, please, that would be great. #time=6:22:04:43
    Morgan;Of course!#time=6:22:04:47
    Morgan;I wouldn't want you walking alone at night. #time=6:22:04:50
    Morgan;I'll be there soon! #time=6:22:04:54
-
->END