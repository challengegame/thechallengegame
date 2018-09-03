EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)
EXTERNAL PlayerName()
EXTERNAL PlayerPersonalPronoun()
EXTERNAL PlayerPossessivePronoun()
EXTERNAL PlayerObjectivePronoun()
EXTERNAL PartyAnetta()
EXTERNAL SetPartyAnetta(party)

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Anetta

VAR not_GiveSpace = false
VAR hesitate_GiveSpace = false
VAR bringAnetta = false

{ PartyAnetta():
    ~ bringAnetta = true
- else: 
    ~ bringAnetta = false
}



Anetta;hey #time=1:22:13:00
Anetta;are you thre? #time=1:22:13:04
Anetta;i don't #time=1:22:13:03 09
Anetta;... #time=1:22:13:11
Anetta;can I trust you with smething uncomfortable? #time=1:22:13:17
Anetta;ish #time=1:22:13:20
Anetta;it isn't that bad #time=1:22:13:22

* [Yes?]
Player;Yes? #time=1:22:13:12 24
Player;It goes without saying. #time=1:22:13:28
Anetta;srry #time=1:22:13:32
Anetta;this is kind of a big deal for me to talk about #time=1:22:13:35


* [I hope you can.]
Player;I certainly hope you can. #time=1:22:13:24
Anetta;srry... #time=1:22:13:27
Anetta;this is kind of a big deal for me to talk about #time=1:22:13:31
-
Anetta;do you... #time=1:22:13:36
Anetta;i thnk Kalil has a thing with Tanya #time=1:22:13:38
Anetta;? #time=1:22:13:42
Anetta;do you think that or #time=1:22:13:44
Anetta;sorry #time=1:22:13:46
Anetta;sorry #time=1:22:13:48
Anetta;sometimes i do this #time=1:22:13:53
Anetta;my brain just feels like its on overdrive #time=1:22:13:55 
Anetta;i can't go to sleep and i try to flip through Pintrest until it stops but it doesn't stop #time=1:22:13:57
Anetta;and then the sun comes up and im like oh SHIT but you cant do anything about the sun and then you remember theres an exam that day and you look at the words and they just #time=1:22:13:59
Anetta;rearrange themselves #time=1:22:14:01
Anetta;and youre freaking out like is it my eyes? #time=1:22:14:03
Anetta;did my brain break? #time=1:22:14:05
Anetta;i can feel something leaking is it my ears? is my brain dying? #time=1:22:14:07
Anetta;is it on my face am i crying can #time=1:22:14:09
Anetta;are people seeing me cry right now? are they watching me? #time=1:22:14:11
Anetta;and youre freaking out and the words all look wrong and if you want to be an architect you have to have really good grades and you keep thinking about your grades and the words are wrong and you cant mess this up #time=1:22:14:13
Anetta;Kalil is texting Tanya and he changes his opinion to match hers or to suck up and hes been doing it for YEARS and its like #time=1:22:14:15
Anetta;what the FUCK #time=1:22:14:19
Anetta;ARE POEMS #time=1:22:14:22
Anetta;WHY DO WE NEED TO BE TESTED ON POEMS #time=1:22:14:24
Anetta;'BUT WHAT DO THEY REALLY REALLY REALLY MEAN' FUCK YOU #time=1:22:14:26
Anetta;IF I WANT TO KNOW WHAT SPORTIVE MEANS #time=1:22:14:28
Anetta;I'LL ASK SOMEONE #time=1:22:14:30
Anetta;OR LOOK IT UP #time=1:22:14:32
Anetta;WHY DO I HAVE TO KNOW WHAT INSENSATE MEANS TO MAKE A FUCKING BUILDING #time=1:22:14:34
Anetta;shit #time=1:22:14:43
Anetta;okay #time=1:22:14:47
Anetta;yeah #time=1:22:14:49
Anetta;im okay #time=1:22:14:53
Anetta;sriously #time=1:22:14:55
Anetta;we'll just tlk more lter #time=1:22:14:59
Anetta;about something else #time=1:22:15:01
Anetta;lets jst drop this #time=1:22:15:03
* [I need to know.]
Player;Anetta #time=1:22:15:06
Player;Whatever's wrong #time=1:22:15:08
Player;I need to know. #time=1:22:15:11
Player;I'm here for you. #time=1:22:15:14
Anetta;i appreciate that but i dnt know how tlking about this more #time=1:22:15:17
Anetta;whatevr this is #time=1:22:15:21
Anetta;i dont know how tlking about it more will help #time=1:22:15:23
	* * [Okay. We can drop it.]
	Player;...Okay. #time=1:22:15:26
	Player;Fine. #time=1:22:15:30
	Player;Consider it dropped. #time=1:22:15:32
	Anetta;thank you #time=1:22:15:35
	Anetta;seriously #time=1:22:15:37
	Anetta;if it was really bad, id let you know #time=1:22:15:41
	Anetta;...and i'm not into Kalil #time=1:22:15:46
	Anetta;just to be completely clear #time=1:22:15:50
	~ hesitate_GiveSpace = true
	
	
	* * [Seriously. What's going on?]
	Player;Seriously. #time=1:22:15:25
	Player;What's going on? #time=1:22:15:28
	Anetta;if something was really wrng i'd tell you #time=1:22:15:30
	Anetta;trust me #time=1:22:15:32
	Anetta;i just need space #time=1:22:15:34
	Anetta;i dont want to get into this #time=1:22:15:37
		* * * [Tell me, Anetta.]
		Player;Tell me, Anetta. #time=1:22:15:42
		Anetta;... #time=1:22:15:46
		Anetta;okay #time=1:22:15:53
		Anetta;you know what #time=1:22:15:57
		Anetta;fuck it #time=1:22:16:00
		Anetta;i like Kalil #time=1:22:16:02
		Anetta;i prbably really like him even if he's a jerk somtimes #time=1:22:16:04
		Anetta;im not sure yet #time=1:22:16:06
		Anetta;and I'm PISSED #time=1:22:16:08
		Anetta;want to know why? #time=1:22:16:11
		Anetta;because you aren't my diary #time=1:22:16:15
		Anetta;youre my friend #time=1:22:16:17
		Anetta;or at least i thought you wre #time=1:22:16:19
		Anetta;and friends dont push their friends to talk talk talk talk talk when they say no #time=1:22:16:21
		Anetta;there's the big secret #time=1:22:16:25
		Anetta;achievement unlocked #time=1:22:16:28
		Anetta;hve a good fucking night #time=1:22:16:30
		~ not_GiveSpace = true
		
		
		* * * [If you insist...]
		Player;Okay. #time=1:22:15:41
		Player;okay #time=1:22:15:44
		Player;You really want to drop it, I will. #time=1:22:15:46
		Anetta;thanks #time=1:22:15:50
		Anetta;see you tomorrow #time=1:22:15:55
		~ hesitate_GiveSpace = true
		
		
* [...Okay.]
Player;okay #time=1:22:15:06
Player;Talk to you soon. #time=1:22:15:08
Anetta;thnks for understanding #time=1:22:15:12
Anetta;i promise, if i wasnt okay #time=1:22:15:15
Anetta;i would tll you #time=1:22:15:18
Anetta;at some point #time=1:22:15:20
Anetta;...i'm not into Kalil #time=1:22:15:28
Anetta;i just want to know what it feels like to be into kalil #time=1:22:15:30
Anetta;does that make sense? #time=1:22:15:32
Anetta;dont text me #time=1:22:15:34
Anetta;tell me in prson #time=1:22:15:36
Anetta;or we could jst keep dropping it that sounds good too #time=1:22:15:39
-

Anetta;hey {PlayerName()} #time=4:18:34:12
Anetta;i just #time=4:18:34:15
Anetta;thnk ive not been the best ths week #time=4:18:34:18
Anetta;or evn close to being ok actually #time=4:18:34:21
Anetta;so i wanted to say sorry im a drag #time=4:18:34:24
Anetta;and that you hve to put up w/me all th time #time=4:18:34:27
*[You're not a drag]
Player;You're not a drag #time=4:18:34:42
Player;Not at all! #time=4:18:34:45
Player;The week's been hard on all of us. #time=4:18:34:47
Player;We're just helping each other out #time=4:18:34:50
*[Don't say that]
Player;It's not true, so don't say that! #time=4:18:34:42
Player;The week's been hard on everyone. #time=4:18:34:45
Player;We're just helping each other out #time=4:18:34:49
-
Anetta;most of us are anyway #time=4:18:34:53
Anetta;i jst wanted to say somethng #time=4:18:34:58
Anetta;sincere #time=4:18:35:02
Anetta;and not copy-pasted #time=4:18:35:05
Anetta;and also thanks? #time=4:18:35:08
Anetta;hemas been so nice #time=4:18:35:11
Anetta;and i know youre here whn i need #time=4:18:35:14
{ not_GiveSpace:
Anetta;even if you push too hard sometmes #time=4:18:35:17
*[I'm sorry]
Player;I'm sorry #time=4:18:35:21
Anetta;I know #time=4:18:35:24
Anetta;its still a bit hard though #time=4:18:35:26
Anetta;but ill b fine #time=4:18:35:29
->AnettaDay4
*[I do, don't I?]
Player;I do that don't I? #time=4:18:35:21
Anetta;yeah a bit #time=4:18:35:24
Anetta;not that it mattrd in the end #time=4:18:35:26
Anetta;whethr i said somethng or not #time=4:18:35:29
->AnettaDay4
- else: 
Anetta;even when I just brainsplode all my thoughts into yr phone #time=4:18:35:17
Anetta;and make no snse #time=4:18:35:21
Anetta;you listn #time=4:18:35:24
{ hesitate_GiveSpace:
Anetta;eventually #time=4:18:35:28
->AnettaDay4
- else: 
Anetta;patiently #time=4:18:35:28
->AnettaDay4
}
}
-
==AnettaDay4==
Anetta;and also #time=4:18:35:32
Anetta;jessie wants to help me with math stff #time=4:18:35:35
Anetta;i think he saw i was having trouble concentrating in class #time=4:18:35:38
Anetta;it was the usual issues but worse #time=4:18:35:42
Anetta;cause of all the THINGS #time=4:18:35:45
Anetta;that happnd #time=4:18:35:48
*[I'm glad he's helping out]
Player;I'm glad he's helping #time=4:18:35:53
Player;In a way you're comfortable with #time=4:18:35:56
Anetta;yeah, he even calld me lst night #time=4:18:36:00
Anetta;no one calls ppl anymre! #time=4:18:36:03
Player;I'm pretty sure my phone hasn't gone off in months #time=4:18:36:07
Anetta;exctly #time=4:18:36:11
Anetta;i didnt even know wht to do wth my phone #time=4:18:36:14
Anetta;so i left the room #time=4:18:36:17
Anetta;but hes givn me space now #time=4:18:36:22
Anetta;a bit anyway #time=4:18:36:25
Anetta;and math help if i need #time=4:18:36:28
*[You've got this!]
Player;I know you've got this, Anetta! #time=4:18:35:53
Player;You're on your way to becoming an amazing architect #time=4:18:35:56
Player;I've seen the evidence in Assassins of Mars #time=4:18:36:00
Player;The womb growth chamber #time=4:18:36:04
Player;The anti-sports track #time=4:18:36:08
Anetta;i hvnt finishd that one #time=4:18:36:12
Anetta;since it became anti-sprts #time=4:18:36:16
Anetta;its new purpse will be *astounding* #time=4:18:36:20
Player;I don't doubt it! #time=4:18:36:24
-
Anetta;anywys #time=4:18:36:32
Anetta;the whole thing is complicatd #time=4:18:36:35
Anetta;like i was right but im not happy with what i saw coming #time=4:18:36:38
Anetta;i'm annoyed that seeing it coming didnt make it better or easier or even possible to fix or preempt in any way #time=4:18:36:41
Anetta;but maybe the pieces are too small and some are missing now and how are you even supposed to do the jigsaw without the picture? #time=4:18:36:46
Anetta;excpt when you can #time=4:18:36:51
Anetta;srry again #time=4:18:36:57
Anetta;it sounds wrse than it is #time=4:18:37:00
Anetta;its good to have u all #time=4:18:37:03
Anetta;y'all #time=4:18:37:07
Anetta;<sprite="Soft_Smile"> #time=4:18:37:10

{ bringAnetta:
->AnettaMerge
- else: 
->AnettaSadParty
}
==AnettaSadParty==
Anetta;the prty sounds kinda nice #time=6:10:07:13
Anetta;i mean bcause youre all going #time=6:10:07:16
Anetta;im sure its a normal party otherwise #time=6:10:07:19
Anetta;srry i don't want to distract you #time=6:10:07:24
Anetta;or butt into your chat or anythng #time=6:10:07:28
Anetta;snce im the only one not going i thought mayb i should chat anyway #time=6:10:07:32
Anetta;rathr than just ignre my phone #time=6:10:07:35
Anetta;i knda wish i was going <sprite="Sad"> #time=6:10:08:28
Player;I'm sorry Anetta #time=6:10:08:32
*[I wish I could help]
    Player;I really wish I could help somehow... #time=6:10:08:37
    Player;It sucks that you can't come #time=6:10:08:41
    Anetta;its okay #time=6:10:08:45
    Anetta;i mean im a bit lonely #time=6:10:08:48
    Anetta;but at least im not compltely missing out if youre all chattng about it #time=6:10:08:51
    Anetta;i think im going to do something for myself this afternoon tho #time=6:10:08:56
*[I thought you didn't want to go?]
    Player;But I thought you didn't want to go to the party anyway? #time=6:10:08:37
    Player;It's hard for you to go to new places and all that #time=6:10:08:41
    Anetta;I guess #time=6:10:08:46
    Anetta;Yeah. #time=6:10:08:50
    Anetta;I'll just do something for myself this afternoon #time=6:10:08:54
-
Anetta;so if i dont message thats why #time=6:10:08:59
Anetta;have fun #time=6:10:09:03
->AnettaMerge

==AnettaMerge==
->END
=== function PartyAnetta() ===
~ return true