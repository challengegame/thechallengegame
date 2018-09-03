EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)
EXTERNAL PlayerName()
EXTERNAL PlayerPersonalPronoun()
EXTERNAL PlayerPossessivePronoun()
EXTERNAL PlayerObjectivePronoun()
EXTERNAL PartyAnetta()

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Kalil

VAR kalil_forgive_day3 = false
VAR kalil_week1confession = false
VAR bringAnetta = true

{ PartyAnetta():
    ~ bringAnetta = true
- else: 
    ~ bringAnetta = false
}

Kalil;I was a dick yesterday. #time=3:06:41:26
Kalil;I know that, you know it, the entire group knows it. #time=3:06:41:29
Kalil;We don't need to go over that again. #time=3:06:41:31
Kalil;I'm sorry. #time=3:06:41:35
Kalil;I could bring up a bunch of stuff that's going on in my life or the feelings I've been dealing with to try to justify it, but I won't. #time=3:06:41:39
Kalil;I'm sorry. #time=3:06:41:41
Kalil;That's it. #time=3:06:41:44
Kalil;So, uh... #time=3:06:41:50
Kalil;what do you think? #time=3:06:41:53
* [Apology accepted.]
Player;Wow, well...Thanks. #time=3:06:41:56
Player;Apology accepted. #time=3:06:41:59
Kalil;Thanks for that <sprite="Soft_Smile"> #time=3:06:42:04
Kalil;It means a lot. #time=3:06:42:07
~ kalil_forgive_day3 = true


* [It's not that easy...]
Player;I'm not sure it's that easy Kalil... #time=3:06:41:56
Player;You said a lot of messed up stuff yesterday. To all of us. #time=3:06:42:00
Kalil;I just said we don't need to go over what happened yesterday. #time=3:06:42:02
Player;Yeah? #time=3:06:42:05
Player;well other people might not feel the same way #time=3:06:42:07
Kalil;... #time=3:06:42:10
Kalil;I guess you have a point there #time=3:06:42:15
-
Kalil;oh hey while I've got your attention: #time=3:06:42:17
Kalil;Do you mind if I ask-- #time=3:06:42:20
Kalil;um #time=3:06:42:23
Kalil;to hell with it #time=3:06:42:27
Kalil;I wanted to ask Tanya to the party, but after... #time=3:06:42:31
Kalil;yes #time=3:06:42:34
Kalil;I didnt #time=3:06:42:36
Kalil;I wasn't sure #time=3:06:42:38
Kalil;god #time=3:06:42:40
Kalil;FUCK #time=3:06:42:42
Kalil;Okay: #time=3:06:42:47
Kalil;Do you think I have a shot with Tanya? Orrrrrr... #time=3:06:42:52 
Kalil;You're the one who's known her longest #time=3:06:42:56
Kalil;I thought you might know. #time=3:06:42:59
	* * [No way.]
	Player;No way. #time=3:06:43:03
	Player;Not a snail's chance in hell. #time=3:06:43:05
	Player;ENTIRELY out of the question--sorry #time=3:06:43:07
	Kalil;Thanks for the vote of confidence m8 #time=3:06:43:10
	Kalil;Really, totally appreciated. #time=3:06:43:12
	Kalil;really #time=3:06:43:15
	Player;She hasn't dated *anyone* Kalil #time=3:06:43:18
	Player;What makes you think she'd even be interested? #time=3:06:43:20
	Kalil;Wait...Not anyone? #time=3:06:43:26
	Kalil;What about what's his name in year 6...Patrick Millwing? #time=3:06:43:29
	Kalil;He moved away? #time=3:06:43:32
	Player;Nope, they just hung out because their moms were a part of the same diocese #time=3:06:43:36
	Kalil;wow... #time=3:06:43:42
	Kalil;I didn't even--i just assumed? #time=3:06:43:45
	Kalil;If she HASNT dated anyone so far, then I could have a better chance than just about anyone. #time=3:06:43:48
	Kalil;I'm her friend. #time=3:06:43:51
	Kalil;...maybe she's even been waiting for me. #time=3:06:43:53
	
	
	* * [...Maybe?]
	Player;Maybe? #time=3:06:43:03
	Player;It's hard to get a read on her for stuff like that. #time=3:06:43:05
	Player;Come to think of it, I've never seen Tanya *date anyone* per se #time=3:06:43:07
	Kalil;Really? #time=3:06:43:11
	Kalil;That can't be right. #time=3:06:43:14
	Player;You met her shortly after I did. Youd know. #time=3:06:43:18
	Kalil;she's private but, wow... #time=3:06:43:20
	Kalil;I didn't even--i just assumed? #time=3:06:43:23
	Kalil;It MUST have happened at some point, right? #time=3:06:43:27
	Kalil;What about what's his name in year 6...Patrick Millwing? #time=3:06:43:31
	Kalil;He moved away? #time=3:06:43:33
	Player;Nope, they just hung out because their moms were a part of the same diocese #time=3:06:43:38
	Kalil;wow... #time=3:06:43:42
	Kalil;If she HASNT dated anyone so far, then I could have a better chance than just about anyone. #time=3:06:43:46
	Kalil;I'm her friend. #time=3:06:43:49
	Kalil;...maybe she's even been waiting for me. #time=3:06:43:51
	- -
	Player;...Why are you putting yourself through this? #time=3:06:43:57
	Kalil;Through what? #time=3:06:44:00
	Player;Things are already awkward in the group #time=3:06:44:03
	Player;Tanya's got...stuff going on. #time=3:06:44:06
	Player;Why pursue this--or if you're going to do it, why now? #time=3:06:44:09
	Kalil;Ha! #time=3:06:44:11
	Kalil;Like you'd understand. #time=3:06:44:15
	Kalil;Do you know how long I've fancied Tanya? #time=3:06:44:18
	Kalil;It's been YEARS, {PlayerName()} #time=3:06:44:20
	Kalil;from the day you introduced us in 4th year #time=3:06:44:22
	Kalil;i was helpless. #time=3:06:44:25
	Kalil;... #time=3:06:44:27
	Kalil;Do you know what its like to be hungry? #time=3:06:44:33
	Kalil;not just peckish #time=3:06:44:36
	Kalil;STARVING #time=3:06:44:38
		* * * [Um, sure?]
		Player;Um, sure? #time=3:06:44:42
		Kalil;when #time=3:06:44:44
		Player;... #time=3:06:44:46
		Kalil;i'm serious #time=3:06:44:48
		Kalil;tell me when #time=3:06:44:51
		Player;When I was younger, mum and dad stayed away overnight for a date. #time=3:06:45:03
		Player;They left me at home with a sitter. #time=3:06:45:06
		Player;At first everything was okay, but then the sitter started muttering about 'being reduced' to looking over 'barbarian children' and took her stuff and walked out the door #time=3:06:45:10
		Kalil;what the fuck??? #time=3:06:45:12
		Player;yeah #time=3:06:45:15
		Player;I grew up in London mate #time=3:06:45:18
		Player;and dad's from Camden #time=3:06:45:20
		Player;Anyway #time=3:06:45:23
		Player;I didn't know how to cook, and all the cabinets and such were locked--the sitter had the key #time=3:06:45:27
		Player;when mum and dad came back the next day, I had chewed up every nail I had and was starting on a couch cushion #time=3:06:45:32
		Kalil;that's fucking horrific #time=3:06:45:35
		Player;yeah, well #time=3:06:45:37
		Player;I certainly know what it's like to be hungry--and the cabinets aren't locked anymore #time=3:06:45:41
		Player;which is nice #time=3:06:45:44
		Player;So why did you want to hear about my occasionally disturbing childhood? #time=3:06:45:48
		Kalil;... #time=3:06:45:50
		Kalil;i feel like I've been starving my entire life #time=3:06:45:53
		Kalil;and when I met Tanya, it was like I saw my first chance to be truly full #time=3:06:45:56
		Player;... #time=3:06:45:58
		Player;are you fucking kidding me #time=3:06:46:04
		
		
		* * * [...Where is this going?]
		Player;...Where is this going, Kalil? #time=3:06:44:42
		Kalil;i don't know #time=3:06:44:44
		Kalil;where IS it going #time=3:06:44:46
		Kalil;tell me if you were ever really, truly hungry and maybe you'll find out #time=3:06:44:49
		Player;... #time=3:06:44:52
		Player;okay #time=3:06:44:54
		Player;*playing along* #time=3:06:44:58
		Player;When I was younger, mum and dad stayed away overnight for a date. #time=3:06:45:03
		Player;They left me at home with a sitter. #time=3:06:45:06
		Player;At first everything was okay, but then the sitter started muttering about 'being reduced' to looking over 'barbarian children' and took her stuff and walked out the door #time=3:06:45:10
		Kalil;what the fuck??? #time=3:06:45:12
		Player;yeah #time=3:06:45:15
		Player;I grew up in London mate #time=3:06:45:18
		Player;and dad's from Camden #time=3:06:45:20
		Player;Anyway #time=3:06:45:23
		Player;I didn't know how to cook, and all the cabinets and such were locked--the sitter had the key #time=3:06:45:27
		Player;when mum and dad came back the next day, I had chewed up every nail I had and was starting on a couch cushion #time=3:06:45:32
		Kalil;that's fucking horrific #time=3:06:45:35
		Player;yeah, well #time=3:06:45:37
		Player;I certainly know what it's like to be hungry--and the cabinets aren't locked anymore #time=3:06:45:41
		Player;which is nice #time=3:06:45:44
		Player;So why did you want to hear about my occasionally disturbing childhood? #time=3:06:45:48
		Kalil... #time=3:06:45:50
		Kalil;i feel like I've been starving my entire life #time=3:06:45:53
		Kalil;and when I met Tanya, it was like I saw my first chance to be truly full #time=3:06:45:56
		Player;... #time=3:06:45:58
		Player;are you fucking kidding me #time=3:06:46:04
		- - -
		Kalil;sure #time=3:06:46:09
		Kalil;yeah #time=3:06:46:12
		Kalil;I'm fucking kidding #time=3:06:46:14
		Kalil;have a good morning #time=3:06:46:17
		Kalil;forget I said anything #time=3:06:46:20
		Player;Kalil #time=3:06:46:24
		Player;I just told you a legit story about STARVING as a KID #time=3:06:46:27
		Player;because of RACISM #time=3:06:46:29
		Player;and you came back with 'my crush deserves to be returned' #time=3:06:46:32
		Kalil;yeah I KNOW WHAT I SAID #time=3:06:46:36
		Kalil;forget it. #time=3:06:46:39
		#time=3:06:46:42
		Kalil;to not be continued -> day3_morning_kalil_sequence1
			
=== day3_morning_kalil_sequence1 ===	

* [Alright then.]
Player;Alright then. #time=3:06:46:45
Player;Your loss. #time=3:06:46:48
Kalil;Not really #time=3:06:46:50
Kalil;But sure #time=3:06:46:53
Kalil;"my loss" #time=3:06:46:56


* [Come on, Kalil...]
Player;Come on, Kalil. #time=3:06:46:45
Player;I shouldn't have made light of your feelings. #time=3:06:46:48
Player;Please tell me whats going on. I care. #time=3:06:46:51
Kalil;...okay. #time=3:06:46:59
Kalil;just to be clear, I'm doing this for you, not for me. #time=3:06:47:02
Kalil;I don't need this. #time=3:06:47:05
Player;Understood. #time=3:06:47:07
Kalil;"Mother" and father messed me up #time=3:06:47:16
Kalil;They made it clear that I was going somewhere beneath our station, so i could be in touch with 'the common people' #time=3:06:47:18
Kalil;(now they say i'm too in touch with the common people but that's a different issue) #time=3:06:47:22
Kalil;They want me to be some kind of fucking politician like her #time=3:06:47:25
Kalil;when I came to school, I was supposed to be like everyone else but...not. #time=3:06:47:27
Kalil;and it worked #time=3:06:47:30
Kalil;I was just on the outskirts #time=3:06:47:32
Kalil;just like they programmed me #time=3:06:47:35
Kalil;there was this HOLE. This gap in my chest where who I am is supposed to be, that never got filled in. #time=3:06:47:40
Kalil;When we met, and I liked you, and you liked me, it felt like that gap shrunk a little bit #time=3:06:47:45
Kalil;When Hema and Anetta and Jessie came along, and they liked me too, it felt like it shrunk even more #time=3:06:47:49
Kalil;but it's always been there #time=3:06:47:53
Kalil;it's always growing #time=3:06:47:55
Kalil;i don't know what happens when the hole gets larger than me #time=3:06:47:58 
Kalil;that's why this party stuff is so important #time=3:06:48:01
Kalil;When you introduced me to Tanya, I saw pain in her. The same pain that haunted me when I closed my eyes. #time=3:06:48:05
Kalil;I thought, here was a person who could finally fill that gap #time=3:06:48:08
Kalil;And I don't know...I feel like if I don't make my move now, I'll never get another chance #time=3:06:48:10
Kalil;To be Whole. #time=3:06:48:13
Kalil;...does any of that make sense? #time=3:06:48:18
~ kalil_week1confession = true
	* * [No?]
	Player;No? #time=3:06:48:20
	Player;I'm sorry, but no. #time=3:06:48:23
	Player;And I get where you're *coming from*, but I'm still not sure making a move on Tanya is a good idea #time=3:06:48:26
	Player;Maybe that hole you mentioned...Maybe that's something deeper that needs to be addressed. And I'm here if you want to do that. #time=3:06:48:30
	Player;Do you want to do that? #time=3:06:48:37
	Kalil;...That's okay #time=3:06:48:40
	Kalil;I didn't expect you to really understand. #time=3:06:48:43
	Kalil;Not like Tanya will. #time=3:06:48:45
	
	
	* * [Sure]
	Player;Sure #time=3:06:48:20
	Player;I'm glad you told me. #time=3:06:48:23
	Player;I'm just not sure you 'making a move' on Tanya is a good idea #time=3:06:48:26
	Player;Maybe that hole you mentioned...Maybe that's something deeper that needs to be addressed. And I'm here if you want to do that. #time=3:06:48:30
	Player;Do you want to do that? #time=3:06:48:37
	Kalil;...That's okay #time=3:06:48:40
	Kalil;I didn't expect you to really understand. #time=3:06:48:43
	Kalil;Not like Tanya will. #time=3:06:48:45
-
Kalil;take care #time=3:06:48:49
Kalil;shit #time=3:08:41:03
Kalil;SHIT #time=3:08:41:07

{ bringAnetta:
->KalilMopeParty
- else: 
->KalilOther
}
==KalilMopeParty==
Kalil;Fuckin party #time=6:10:08:10
*[Sorry, I wish we could all go]
    Player;I'm sorry you're in this position, Kalil. #time=6:10:08:15
    Player;I really wish we could all go #time=6:10:08:18
    Player;The party will be significantly less fun without you #time=6:10:08:21
    Kalil;...sure #time=6:10:08:25
    { kalil_forgive_day3:
        Kalil;Out of all of them you're the only one that sometimes gets me #time=6:10:08:29
        Kalil;So I guess thanks and have fun. #time=6:10:08:34
    -else:
        Kalil;I know you don't really get me #time=6:10:08:28
        Kalil;But at least you realise what a shitty situation we're in #time=6:10:08:31
        Kalil;Have fun i guess. #time=6:10:08:34
    }
    Kalil;I'm gonna do something more interesting with my time #time=6:10:08:38
*[Sorry, but you brought it upon yourself]
    Player;I'm sorry you're in this position, Kalil. #time=6:10:08:15
    Player;But you kind of brought it upon yourself #time=6:10:08:19
    Kalil;You know what, screw you {PlayerName()} #time=6:10:08:26
    Kalil;I've got better things to do than talk to you. #time=6:10:08:30
-
->KalilOther
==KalilOther==

-> END
=== function PartyAnetta() ===
~ return true