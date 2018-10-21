EXTERNAL RelationshipChange(character, change)
EXTERNAL GetRelationshipValue(character)
EXTERNAL PlayerName()
EXTERNAL PlayerPersonalPronoun()
EXTERNAL PlayerPossessivePronoun()
EXTERNAL PlayerObjectivePronoun()
EXTERNAL PartyAnetta()
EXTERNAL CheckHemaDrunk()
EXTERNAL SetKebab(kebab)

//This tag at the top of the file determines which channel this goes to - one of the characters, or the group.
#Group

VAR hard_daddy = false
VAR ahole = false 
VAR KalilFunny = false
VAR bringAnetta = false
VAR kebab = false

{ PartyAnetta():
    ~ bringAnetta = true
- else: 
    ~ bringAnetta = false
}

Hema;good morning everyone! #time=1:06:30:52
Hema;I'm getting ready for early morning practice #time=1:06:30:56
Hema;How are all of you? #time=1:06:31:00

* [I'm good!]
Player;I'm good! #time=1:06:31:06
Player;Reset my phone last night for the new memory card. #time=1:06:31:10
Player;(i'm going to be able to fit so many books on this thing) #time=1:06:31:23

* [Could be better.]
Player;Could be better. #time=1:06:31:06
Player;Reset my phone last night for the new memory card. #time=1:06:31:10
Player;(i'm going to be able to fit so many books on this thing) #time=1:06:31:23
-
Anetta;how ar you up alredy hema #time=1:06:32:10
Anetta;what tme is it #time=1:06:32:16
Kalil;the Year of Our Lord 632 AD #time=1:06:32:18
Kalil;0632 #time=1:06:32:20
Kalil;25:37 AM las vegas colorado india time #time=1:06:32:24
Anetta;at least 1 of thse is horribly wrng #time=1:06:32:27
Kalil;Time is a construct. It can be whatever you want. #time=1:06:32:31
Jessie;morning y'all #time=1:06:32:33
Kalil;did you seriously just use the word "y'all" #time=1:06:32:37
Jessie;I'm American #time=1:06:32:39
Jessie;It works #time=1:06:32:41
Kalil;"You" and "all" work #time=1:06:32:45
Kalil;just as words. in general. #time=1:06:32:49
Kalil;"y'all" is an abomination #time=1:06:32:51
Tanya;If you're texting this early, I'm Assuming you all Finished Studying for the Literature Exam Today. #time=1:06:32:53
Anetta;is tht today #time=1:06:32:55
Tanya;Yes. #time=1:06:32:57
Anetta;omg #time=1:06:33:01
Anetta;Im fuuuuuucked #time=1:06:33:03
Jessie;I could help you study a bit before Anetta #time=1:06:33:07
Jessie;If that helps #time=1:06:33:11
Hema;I have to get up this early #time=1:06:33:13
Hema;for practice #time=1:06:33:15
Hema;house rules #time=1:06:33:21
Jessie;Is that why you're planning to drop out after sixth form #time=1:06:33:25
Jessie;So you don't have to wake up anymore #time=1:06:33:27
Kalil;are you talking about death again Jessie #time=1:06:33:33
Kalil;because it sounds like youre talking about death. #time=1:06:33:35
Tanya;I don't think it Sounded like That at all, Kalil. #time=1:06:33:37
Kalil;Well #time=1:06:33:39
Kalil;you could see it that way is all i'm saying #time=1:06:33:41
Kalil;A joke #time=1:06:33:45
Tanya;K. #time=1:06:33:53
Anetta;I'm going bck to bed #time=1:06:33:55
Hema;*godspeed* #time=1:06:33:57
Kalil;I'll see "y'all" at school. #time=1:06:34:01
Jessie;IT'S A GOOD CONTRACTION KALIL #time=1:06:34:05
Kalil;SURE I,T IS #time=1:06:34:07
	- -
	Hema;I GOT THE HOOKUP #time=1:08:31:04
	Hema;ALL HAIL HEMA #time=1:08:31:08
	Hema;and when I say hema #time=1:08:31:12
	#time=1:08:31:14
	Hema;I MEAN ME -> day1_morning_group_sequence2

=== day1_morning_group_sequence2 ===

* [What's going on?]
Player;What's going on? #time=1:08:31:16
Player;I mean i'm all for "hailing hema" #time=1:08:31:18
Player;but still #time=1:08:31:22
Jessie;Also lost #time=1:08:31:24
Tanya;You might not Know this, Jessie, but we don't usually Text in Class here. #time=1:08:31:28
Jessie;all due respect for your valedictorian status but I'm an exchange student #time=1:08:31:32
Jessie;As long as I pass, im all for wacky shenanigans #time=1:08:31:34
Tanya;You're sure you're going to pass? #time=1:08:31:36
Jessie;Oh I'm going to pass #time=1:08:31:38
Kalil;I think he's saying yes #time=1:08:31:42
Tanya;I thought you were Above this kind of Thing, Kalil. #time=1:08:31:44
Kalil;I am #time=1:08:31:48
Kalil;Which is why I'm here #time=1:08:31:50
Kalil;To be an example #time=1:08:31:52
Tanya;Hmm. #time=1:08:31:54
Anetta;txting 2 say im not going to txt #time=1:08:31:56
Jessie;That's the spirit! #time=1:08:32:00
Hema;DO YOU WANT TO HEAR THE NEWS OR NOT #time=1:08:32:02
Jessie;YES #time=1:08:32:04
Jessie;god yes #time=1:08:32:07
Hema;TEACHER LOOKING SHUT UP #time=1:08:32:09


* [IS THIS THE NEWS???]
Player;IS THIS THE NEWS??? #time=1:08:31:16
Hema;no no no #time=1:08:31:18
Hema;this isn't the news #time=1:08:31:20
Hema;OF COURSE THIS IS THE NEWS #time=1:08:31:25
Jessie;What is this news #time=1:08:31:29
Hema;I told {PlayerPersonalPronoun()} that i might have news a couple hours from then #time=1:08:31:31
Hema;AND I DO #time=1:08:31:33
Tanya;You might not Know this, Jessie, but we don't usually Text in Class here. #time=1:08:31:37
Jessie;Hey, I'm an exchange student #time=1:08:31:41
Jessie;These texts ARE my education #time=1:08:31:43
Jessie;technically #time=1:08:31:45
Kalil;Why didn't you tell the rest of us that youd have news Hema #time=1:08:31:47
Kalil;Or at least Tanya #time=1:08:31:49
Tanya;I'm Fine Kalil. #time=1:08:31:51
Hema;didnt come up #time=1:08:31:53
Hema;also #time=1:08:31:57
Hema;practice #time=1:08:31:59
Anetta;txting 2 say im not going to txt #time=1:08:32:01
Jessie;That's the spirit! #time=1:08:32:03
Hema;DO YOU WANT TO HEAR THE NEWS OR NOT #time=1:08:32:05
Jessie;YES #time=1:08:32:07
Jessie;god yes #time=1:08:32:10
Hema;TEACHER LOOKING SHUT UP #time=1:08:32:12
-
Hema;okay heres the deal #time=1:08:37:00
Hema;someone's holding a party this Saturday #time=1:08:37:05
Hema;a BIG one #time=1:08:37:07
Hema;Very limited invites #time=1:08:37:09
Hema;...Ask me whos doing it #time=1:08:37:14
Hema;come ooooooon #time=1:08:37:20
Tanya;Who is it Hema #time=1:08:37:24
Hema;UGH #time=1:08:37:26
Hema;I am so glad you asked Tanya #time=1:08:37:28
Hema;It's DAMIEN #time=1:08:37:30

	* * [Who's Damien?]
	Player;Who's Damien? #time=1:08:37:34
	Player;Are they a big deal? #time=1:08:37:38
	Player;...should we even be texting still? #time=1:08:37:40
	Hema;let me worry about how much trouble you get into after this {PlayerName()} #time=1:08:37:42
	Hema;you know that guy who wears the exact same clothes as everyone else, but Gucci or something just because he can? #time=1:08:37:45
	Hema;really slick hair? #time=1:08:37:47
	Hema;looks at everyone like they're literally made out of dirt? #time=1:08:37:49
	Hema;also because he can? #time=1:08:37:51
	Hema;...short? #time=1:08:37:54
	Hema;that's Damien #time=1:08:37:56
	Hema;The party's at his house so you know itll be expensive AND inexplicably sleazy #time=1:08:38:00
	Kalil;Inexplicable! Can't be explained. #time=1:08:38:02
	Hema;i mean it can be explained, but not politely #time=1:08:38:05
	Anetta;I don't like him. #time=1:08:38:07
	Kalil;Busting out proper grammar for your dislike, huh? #time=1:08:38:10
	Jessie;I thought you were above this Kalil #time=1:08:38:12
	Kalil;Again #time=1:08:38:14
	Kalil;I am a shining example in the darkness #time=1:08:38:16
	Tanya;And, a Massive Hypocrite. #time=1:08:38:18
	Kalil;Eh that too #time=1:08:38:24
	

	* * [Should we even care about the party?]
	Player;Should we even *care* about this party? #time=1:08:37:34
	Player;Speaking purely hypothetically #time=1:08:37:38
	Hema;well, if American movies are anything to go by, our social standing relies on us going to as many parties as possible #time=1:08:37:44
	Hema;also #time=1:08:37:46
	Hema;it will be nice to drink Fanta somewhere other than your living room for once #time=1:08:37:48
	Hema;no offense #time=1:08:37:52
	Player;You know my mom doesn't like alcohol! #time=1:08:37:55
	Player;Secular or not... #time=1:08:37:57
	Hema;it isn't the drink choice #time=1:08:37:59
	Hema;it's the living room #time=1:08:38:01
	Hema;not that its not a nice living room!! #time=1:08:38:04 
	Kalil;No #time=1:08:38:06
	Kalil;We've just seen it 4000 times #time=1:08:38:08
	Jessie;Who's Damien again? #time=1:08:38:10
	Anetta;rich #time=1:08:38:14
	Anetta;asshole #time=1:08:38:16
	Anetta;kinda short #time=1:08:38:18
	Anetta;has really good hair #time=1:08:38:20
	Jessie;Oh THAT guy! #time=1:08:38:22
	Anetta;Yea!! #time=1:08:38:24
	Kalil;That could describe several people in this school #time=1:08:38:27
	Jessie;I know who she's talking about though #time=1:08:38:29
	Kalil;whatever #time=1:08:38:32
	- -
	Kalil;What do you think {PlayerName()}? #time=1:08:38:37 
	Kalil;Would you want to go to an Awesome party even if Damien is holding it? #time=1:08:38:39 
		* * * [Not sure.]
		Player;Not sure. #time=1:08:38:45
		Player;Damien sounds like a bit of a jerk #time=1:08:38:47
		Anetta;asshole #time=1:08:38:49
		Anetta;very specific word choice #time=1:08:38:51
		Kalil;...Should I even ask why? #time=1:08:38:55
		Anetta;he emits waste and is covred in hair #time=1:08:38:57
		Hema;okay this conversation is NOT going in a pleasant direction. #time=1:08:38:59
		Hema;you've got the scoop of the day #time=1:08:39:05
		Hema;let's talk about this more at lunch. #time=1:08:39:08
		Kalil;How many assholes do you see covered in hair???? #time=1:08:39:10
		Hema;in person #time=1:08:39:12
		Hema;AND NEVER EVER DISCUSS HAIRY ORIFICES AGAIN #time=1:08:39:14
		Hema;OMG #time=1:08:39:16
		Tanya;Agreed. #time=1:08:39:19
		Tanya;Good luck on the Exam, Everyone. #time=1:08:39:23
		~ ahole = true

		* * * [Well, if I was invited...]
		Player;Well, if I was invited... #time=1:08:38:45
		Player;I think i could bring myself to drink his drinks and eat his food #time=1:08:38:49
		Jessie;I think I could as well, but only if the rest of you were there #time=1:08:38:52
		Anetta;I'm not sure i could do it #time=1:08:38:54
		Anetta;not cmfortble wth new environmnts #time=1:08:38:56
		Jessie;I'd be there for you Anetta #time=1:08:38:58
		Jessie;We all would #time=1:08:39:01
		Anetta;thnks <sprite name="Smile"> #time=1:08:39:04
		Kalil;What makes you think youd be invited Jessie? #time=1:08:39:08
		Jessie;People like me! #time=1:08:39:10
		Kalil;why #time=1:08:39:12
		Jessie;not really sure tbh #time=1:08:39:14
		Hema;okay #time=1:08:39:18
		Hema;"y'all" have the scoop of the day #time=1:08:39:20
		Hema;let's talk about this more at lunch. #time=1:08:39:22
		Hema;in person #time=1:08:39:24
		Tanya;Agreed. #time=1:08:39:27
		Tanya;Good luck on the Exam, Everyone. #time=1:08:39:31 
		~ ahole = false
		- - -
		Hema;anyone have evening plans? #time=1:16:03:10
		Kalil;Sorry. #time=1:18:24:00
		Kalil;Just saw this. #time=1:18:24:02
		Kalil;Was out with the rebelrousers #time=1:18:24:04
		#time=1:18:24:08
		Kalil;I'm thinking about grabbing something to eat. -> day1_evening_group_sequence1
		
=== day1_evening_group_sequence1 ===

* [Who are the "Rebelrousers"?]
Player;Who the hell are the "Rebelrousers"? #time=1:18:24:10
Kalil;Just some cool peeps i met. #time=1:18:24:14
Kalil;They went to one of my gigs and we really hit it off #time=1:18:24:16
Hema;i didn't know you were still in the band with George and Malik! #time=1:18:24:18
Hema;good for you #time=1:18:24:20
Kalil;Nah #time=1:18:24:23
Kalil;I'm with a new crew now #time=1:18:24:25
Kalil;George and Malik and me had some creative differences #time=1:18:24:31
Kalil;We weren't playing the kind of down to earth, grounded music i really care about #time=1:18:24:35
Hema;Im sorry to hear that #time=1:18:24:37
Kalil;Its life. #time=1:18:24:39
Kalil;New band is called Thin Skunks. #time=1:18:24:43
Kalil;You should come by sometime. #time=1:18:24:45
Kalil;I think you'd particularly enjoy it Tanya. #time=1:18:24:49
Hema;i can try to join you! Where do you play? #time=1:18:24:52
Kalil;Here and there. #time=1:18:25:11


* [What were you doing?]
Player;What were you doing? #time=1:18:24:10
Kalil;Just kicking about. #time=1:18:24:12
Kalil;They went to one of my gigs and we really hit it off. #time=1:18:24:14
Kalil;They're great #time=1:18:24:18
Kalil;Very...grounded. #time=1:18:24:21
Kalil;Not too many people invested in the sweat and the grime of life like that anymore #time=1:18:24:25
Kalil;People our age would rather take selfies with grafitti than make it #time=1:18:24:27
Hema;i didn't know you were still in the band with George and Malik! #time=1:18:24:29
Hema;good for you #time=1:18:24:31
Kalil;Nah #time=1:18:24:33
Kalil;I'm with a new crew now #time=1:18:24:35
Kalil;George and Malik and me had some creative differences #time=1:18:24:38
Kalil;We weren't playing the kind of down to earth music i really care about #time=1:18:24:40
Hema;sorry to hear that #time=1:18:24:44
Kalil;Its life. #time=1:18:24:46
Kalil;New band is called Thin Skunks. #time=1:18:24:49
Kalil;You should come by sometime. #time=1:18:24:51
Kalil;I think you'd particularly enjoy it Tanya. #time=1:18:24:53
Hema;i can try to join you! Where do you play? #time=1:18:24:55
Kalil;Here and there. #time=1:18:25:11 
-
Anetta;id be up for gettng smething to eat  #time=1:18:25:15
Kalil;I think i'm good now actually #time=1:18:25:17
Kalil;Sorry #time=1:18:25:19
Anetta;nevrmind then #time=1:18:25:23
Hema;NO #time=1:18:25:25
Hema;i *refuse* #time=1:18:25:29
Hema;Were taking you out to eat Anetta #time=1:18:25:31
Anetta;its okay #time=1:18:25:33
Anetta;seriously <sprite name="Smile"> #time=1:18:25:35
Jessie;Im up for eating things #time=1:18:25:39
Hema;hurrah! #time=1:18:25:41
Hema;anyone else? #time=1:18:25:43
	* * [Let's eat!]
	Player;Let's eat! #time=1:18:25:46
	Player;Eating is good! #time=1:18:25:48
	Player;Pretty sure it's necessary for human life! #time=1:18:25:52
	Player;Food, am I Right?!?! #time=1:18:25:54
	Anetta;...how long hs it been since you last ate #time=1:18:25:56
	Player;I can't remember! #time=1:18:25:58
	Player;I am in agony! #time=1:18:26:00
	Jessie;YEAH!!! #time=1:18:26:02
	Anetta;hahaha #time=1:18:26:06
	Anetta;mybe eating is a good plan #time=1:18:26:09
	Tanya;Sorry for The Delay. #time=1:18:26:14
	Tanya;Had to discuss my last exam results with the family... #time=1:18:26:17
	Tanya;I'll be Around #time=1:18:26:19
	Hema;Brilliant! #time=1:18:26:21

	
	* * [Depends on where we go...]
	Player;It depends on where we go... #time=1:18:25:46
	Player;I haven't eaten in a while, but if we're just going to go to Speed-E Pizza I can pass #time=1:18:25:50
	Hema;You can say that because youre lucky enough to have a dad at home who cooks with magic and angel wings #time=1:18:25:52
	Jessie;Angel Wings: Heavenly Delicious! #time=1:18:25:54
	Hema;This Chat: Gleefully Sacrilgeous! #time=1:18:25:56
	Hema;(apparently) #time=1:18:25:58
	Hema;maybe? #time=1:18:26:00
	Hema;nah #time=1:18:26:02
	Player;Eating is good though! #time=1:18:26:05 
	Player;Pretty sure it's necessary for human life! #time=1:18:26:07
	Player;Food, am I Right?!?! #time=1:18:26:09
	Anetta;...how long hs it been since you last ate #time=1:18:26:14
	Player;I can't remember!! #time=1:18:26:16
	Anetta;hahaha #time=1:18:26:18
	Anetta;yea #time=1:18:26:22
	Anetta;maybe you need to come {PlayerName()} #time=1:18:26:25
	Tanya;Sorry for The Delay. #time=1:18:26:27
	Tanya;Had to discuss my last exam results with the family... #time=1:18:26:32
	Tanya;I'll be Around #time=1:18:26:34
	Hema;Brilliant! #time=1:18:26:36
	- -
	Kalil;I vote we go to the kebab place over on Shift Street. #time=1:18:26:37
	Hema;I thought you weren't coming Kalil? #time=1:18:26:39
	Kalil;I wasnt #time=1:18:26:43
	Kalil;Now I am #time=1:18:26:45
	Jessie;Kebab? #time=1:18:26:47
	Jessie;At NIGHT??? #time=1:18:26:50
	Kalil;You've never heard of night kebab? #time=1:18:26:53
	Kalil;It's an English tradition! #time=1:18:26:55
	Kalil;Late night kebab and colonialism! #time=1:18:26:57
	Kalil;Which preceded the former, actually... #time=1:18:27:00
	Jessie;If its all the same to you, I'd prefer to go to the Korean place on Chester. #time=1:18:27:06
	Kalil;It isn't the same to me. #time=1:18:27:08
	Kalil;I vote kebab. #time=1:18:27:10
	Hema;id prefer Korean tonight actually #time=1:18:27:13
	Hema;been craving gimbap for a while now you mention it #time=1:18:27:15
	Anetta;sorry but kebab actually sounds really good right now #time=1:18:27:17
	Tanya;I vote for Korean. #time=1:18:27:19
	Anetta;we dont even need to be doing this tbh #time=1:18:27:21
	Anetta;ive got some leftover shepherds pie in the fridge #time=1:18:27:26
	Anetta;and you know my moms shepherds pie is good #time=1:18:27:28
	Anetta;really dont want to put anyone out or start anything #time=1:18:27:31
	Hema;you're fine sweetie #time=1:18:27:33
	Hema;we'll figure this out #time=1:18:27:35
	Hema;TIEBREAKER TIME #time=1:18:27:37
	Hema;{PlayerName()} - you decide #time=1:18:27:41
	Kalil;Why does {PlayerName()} get to choose? #time=1:18:27:43
	Hema;objectivity #time=1:18:27:45
	Hema;also #time=1:18:27:48
	Hema;coolness #time=1:18:27:50
	Kalil;I'm cool, Hema. #time=1:18:27:52
	#time=1:18:27:54
	Hema;up for debate <sprite name="Wink"> -> day1_evening_group_sequence2
	
=== day1_evening_group_sequence2 ===

* [Korean.]
~ kebab = false
{SetKebab(false)}
Player;Let's do Korean! #time=1:18:27:58
Player;I fancy Bulgogi, and other Such Dishes. #time=1:18:28:02
Jessie;YES #time=1:18:28:04
Tanya;Cool. #time=1:18:28:06
Kalil;Enh #time=1:18:28:08
Kalil;I guess I could get some lamb or something... #time=1:18:28:12
Hema;bootleg kebap #time=1:18:28:14
Hema;the other great English tradition #time=1:18:28:16
Kalil;You know it #time=1:18:28:18
Anetta;ill see you all there <sprite name="Smile"> #time=1:18:28:22
Hema;see you soon! #time=1:18:28:24


* [Kebab.]
~ kebab = true
{SetKebab(true)}
Player;I say we go for Kebab. #time=1:18:27:58
Player;It IS a tradition after all. #time=1:18:27:02
Kalil;BOOM #time=1:18:28:04
Kalil;COOLNESS PROVED #time=1:18:28:06
Jessie;ugh #time=1:18:28:08
Jessie;fine #time=1:18:28:10
Jessie;I'm going to eat the HELL out of those kebabs #time=1:18:28:12
Hema;jessie #time=1:18:28:14
Hema;we will make sure you get an A in kebab #time=1:18:28:16
Jessie;*thank you* #time=1:18:28:18
Anetta;ill see you all there <sprite name="Smile"> #time=1:18:28:20
Hema;See you soon! #time=1:18:28:22
-
{ kebab:
		
Hema;<SelfieDay1Kebab> #time=1:20:01:27	
 - else:
 Hema;<SelfieDay1Korean> #time=1:20:01:27	
 }
Hema;There we go! #time=1:20:01:29
Hema;Talk more tomorrow <sprite name="Heart"> #time=1:20:01:33
Hema;morning! #time=2:06:23:52
Anetta;hi #time=2:06:24:43
Anetta;!! #time=2:06:23:47
Jessie;Yo! #time=2:06:31:00
Jessie;Hey #time=2:06:43:06
#time=2:06:43:10
Jessie;What's a hard man -> day2_morning_group_sequence1
		
=== day2_morning_group_sequence1 ===

* [Why?]
Player;Uhhhh...Why? #time=2:06:43:15
Jessie;I keep hearing people use that term #time=2:06:43:18
Jessie;and I couldn't tell whether it was a sex thing based on how some people were using it #time=2:06:43:22
Jessie;so I didn't want to google it #time=2:06:43:25
Tanya;That is an Extremely Unfortunate situation to Be in. #time=2:06:43:29
Jessie;i know right #time=2:06:43:31

* [...Have you asked anyone else about it?]
Player;Have you asked anyone else about this? #time=2:06:43:16
Jessie;Not yet #time=2:06:43:20
Jessie;I thought it might be a sex thing so I didn't want to bring it up and make anyone feel awkward #time=2:06:43:24
Jessie;or google it #time=2:06:43:26
Tanya;That is an Extremely Unfortunate situation to Be in. #time=2:06:43:31
Jessie;i know right #time=2:06:43:33
-
Jessie;Y'all have a really safe vibe though #time=2:06:43:36
Jessie;A real "i can discuss weird repressed British sex things without telling anyone you asked or even considered they existed" kind of vibe #time=2:06:43:38
Jessie;Can you see where i'm going with this #time=2:06:43:45
Hema;Um, thanks? #time=2:06:43:48
Hema;Maybe we have those kind of faces? #time=2:06:43:50
Hema;oh god #time=2:06:43:52
Hema;we have those kinds of faces #time=2:06:43:55
Jessie;SO #time=2:06:43:57
Jessie;Hard Man #time=2:06:44:01
Jessie;what is it #time=2:06:44:03
Anetta;uh #time=2:06:44:08
Tanya;My Apologies for any Potential Interruption, but maybe {PlayerName()} should take this One. #time=2:06:44:10
Anetta;okay #time=2:06:44:14
Anetta;yeah #time=2:06:44:16
	* * [Do you know Jason Statham?]
	Player;Okay, do you know Jason Statham? #time=2:06:44:19
	Player;Small? #time=2:06:44:21
	Player;Squinty? #time=2:06:44:24
	Player;almost badgerlike #time=2:06:44:26
	Jessie;I am vaguely acquainted with OF COURSE I KNOW WHO JASON STATHAM IS #time=2:06:44:30
	Player;and Phil Mitchell? #time=2:06:44:32
	Jessie;Mm...that's an EastEnders thing right? #time=2:06:44:38
	Jessie;Is he the bald guy who #time=2:06:44:40
	Jessie;wait wait wait #time=2:06:44:43
	Jessie;*badgerlike* #time=2:06:44:45
	Jessie;okay #time=2:06:44:49
	Jessie;I think I get what you mean #time=2:06:44:51
	Player;Hard Man is basically the British way of saying 'macho' #time=2:06:44:55
	Player;because of our pathological need to be both endlessly polite #time=2:06:44:58
	Player;and naughty #time=2:06:45:01
	Player;for absolutely no reason #time=2:06:45:04
	Player;to the dismay of literally everyone #time=2:06:45:07
	Tanya;Well Said. #time=2:06:45:12
	Anetta;in yor defense jessie #time=2:06:45:14
	Anetta;i know what hard man means #time=2:06:45:16
	Anetta;and i was still afraid {PlayerName()} would reveal it was a sex thng #time=2:06:45:18
	Hema;as long as we promise to never use the word Hard Man ever again I think we'll be fine #time=2:06:45:40
	Hema;we'll make it through this #time=2:06:45:50
	Jessie;Can i use it once? #time=2:06:46:01
	Jessie;In a sentence? #time=2:06:46:03
	Jessie;To see if I'm doing it right? #time=2:06:46:06
	Hema;... #time=2:06:46:09
	Hema;okay #time=2:06:46:13
	Hema;ONCE #time=2:06:46:16
	Anetta;hard man #time=2:06:46:19
	Hema;I SAID JESSIE COULD DO IT #time=2:06:46:21
	Hema;NO ONE ELSE #time=2:06:46:23
	Hema;THERE ARE PROTOCOLS FOR THIS KIND OF THING #time=2:06:46:25
	Anetta;haha #time=2:06:46:28
	Tanya;Ha. <sprite name="Soft_Smile"> #time=2:06:46:34
	Hema;so uh #time=2:06:48:07
	Hema;when are you going to say it jessie #time=2:06:48:09
	Jessie;Later! #time=2:06:48:12
	Hema;seriously #time=2:06:48:18
	Jessie;... #time=2:06:48:22
	Jessie;yes #time=2:06:48:24
	
	* * [are you familiar with "daddy"]
	Player;okay #time=2:06:44:20
	Player;jessie #time=2:06:44:22
	Player;how familiar are you #time=2:06:44:24 
	Player;with the term #time=2:06:44:28
	Player;daddy #time=2:06:44:31
	Anetta;UH #time=2:06:44:33
	Jessie;IT'S A SEX THING ISN'T IT #time=2:06:44:35
	Jessie;I KNEW IT #time=2:06:44:37
	Jessie;FRIEAKING KNEW IT #time=2:06:44:39
	Jessie;*FREAKING #time=2:06:44:42
	Jessie;SHIT #time=2:06:44:44
	Player;hahaha #time=2:06:44:46
	Player;no no no #time=2:06:44:49
	Player;I meant daddy in the BRITISH sense #time=2:06:44:51
	Jessie;... #time=2:06:44:53
	Jessie;what #time=2:06:44:58
	Jessie;I'm pretty sure its a sex thing over here too #time=2:06:45:00
	Player;no, like #time=2:06:45:03
	Player;OLD British #time=2:06:45:05
	Player;70s British #time=2:06:45:08
	Player;when the Americans used to say daddy-o and stuff #time=2:06:45:10
	Player;We used to do a similar thing #time=2:06:45:12
	Player;youd say "you're a pretty decent cat, daddy-o" #time=2:06:45:16
	Player;And we'd say #time=2:06:45:19
	Player;"you're a pretty righteous bloke, hard daddy" #time=2:06:45:21
	Player;same thing different culture #time=2:06:45:24
	Tanya;. #time=2:06:45:32
	Jessie;You must be joking #time=2:06:45:39
	Jessie;HARD DADDY?! #time=2:06:45:44
	Player;No joke #time=2:06:45:48
	Player;We changed it for obvious reasons, but thats the root of Hard Man. #time=2:06:45:50
	Player;Close friends still use it. #time=2:06:45:54
	Player;It's a sign of mutual, awkward trust. #time=2:06:45:56
	Player;You don't rat out a friend who calls you Hard Daddy. #time=2:06:46:00
	Jessie;That sounds absolutely ridiculous #time=2:06:46:04
	Jessie;and yet #time=2:06:46:06
	Jessie;*i want to believe you* #time=2:06:46:15
	Hema;well SHIT #time=2:06:46:18
	Jessie;Is this Hard Daddy stuff not true?? #time=2:06:46:20
	Tanya;It's not Not Not Not True. #time=2:06:46:22
	Jessie;what #time=2:06:46:24
	Jessie;what???? #time=2:06:46:27
	Hema;relax Jessie #time=2:06:46:29
	Hema;just #time=2:06:46:32
	Hema;never use it around anyone else #time=2:06:46:34
	Hema;or us! #time=2:06:46:37
	Jessie;So Hard Daddy IS a Thing? #time=2:06:46:41
	Hema;um #time=2:06:46:44
	Hema;yeah sure #time=2:06:46:54
	Jessie;Your awkward lack of commitment is more proof than I could have ever hoped for #time=2:06:46:59
	~ hard_daddy = true
	- -
	Kalil;Hey #time=2:14:04:11
	Hema;hello!! #time=2:14:04:14
	Hema;we missed you this morning #time=2:14:04:17
	Kalil;Sorry. I was talking to the Rebelrousers. #time=2:14:04:21
	Kalil;I figured you could carry at least one conversation without me eh? <sprite name="Wink"> #time=2:14:04:24
	Kalil;I saw "y'all" in the school lobby. #time=2:14:04:27
	Kalil;We're cool. #time=2:14:04:29
	Hema;sure... #time=2:14:04:32
	Kalil;Oh. #time=2:14:04:39
	Kalil;And just to be clear. #time=2:14:04:41
	Kalil;I meant Hey in the classic, understated sense. #time=2:14:04:43
	Kalil;Not the "WHAT UP MY DUDES" hey. #time=2:14:04:46
	Anetta;what's wrng with the othr hey? #time=2:14:04:48
	{ hard_daddy:
		Jessie;What's up hard daddy #time=2:14:04:50
		- else:
		Jessie;What's up hard man #time=2:14:04:50
	}
	Kalil;thAT #time=2:14:04:52
	Kalil;THAT IS EXACTLY WHAT IS WRONG WITH THE "WHAT UP MY DUDES" HEY. #time=2:14:04:55
	Kalil;the hell are you on about Jessie #time=2:14:04:59
	{ hard_daddy:
		Jessie;{PlayerName()} said it was like "daddy-o" or "hip cat" for close friends #time=2:14:05:03
		Jessie;in England #time=2:14:05:05
		Jessie;Like a cool greeting for friends you don't rat out! #time=2:14:05:08
		- else:
		Jessie;Hema said I got to say Hard Man once in a sentence #time=2:14:05:03
		Jessie;To make sure I got the meaning right #time=2:14:05:05
		Jessie;That was my one #time=2:14:05:08
	}
	Anetta;YOU ACTALLY SAID IT #time=2:14:05:10
	Hema;WOW #time=2:14:05:12
	Hema;LOL #time=2:14:05:14
	Anetta;hahaha #time=2:14:05:16
	Jessie;I KNEW IT #time=2:14:05:20
	Jessie;FRIGGING KNEW IT #time=2:14:05:22
	Kalil;okay you all somewhow make less sense than you did 3 seconds ago #time=2:14:05:26
	Kalil;This is why I hang out with the Rebelrousers. #time=2:14:05:29
	Jessie;Because they're your groupies? #time=2:14:05:31
	Kalil;you *wish* you had groupies #time=2:14:05:34
	Kalil;ANYWAY. #time=2:14:05:36
	Kalil;If I may have your painfully divided attention, I'm the one with the good stuff today. #time=2:14:05:41
	Kalil;Gossip. #time=2:14:05:43
	Kalil;Who wants some?! #time=2:14:05:46
	Tanya;Does anyone Else find it Strange that we're having This conversation Here considering that we're sitting One Meter away from each other? #time=2:14:05:50
	Tanya;Why are you Sitting at Another table Anyway, Kalil? #time=2:14:05:53
	Kalil;I'll answer that question with two other questions. #time=2:14:05:59
	Kalil;One: #time=2:14:06:01
	Kalil;Why is it more polite to text while eating, than to talk while eating? #time=2:14:06:04
	Kalil;Because you aren't staring at someone's half-chewed food #time=2:14:06:06
	Kalil;Two: #time=2:14:06:09
	Kalil;Do you want the scoop or not? #time=2:14:06:11
	Kalil;Seriously. #time=2:14:06:15
	#time=2:14:06:21
	Kalil;I could just as soon take this elsewhere. -> day2_afternoon_group_sequence1
	
=== day2_afternoon_group_sequence1 ===
	
* [Give us the gossip!]
Player;Alright alright #time=2:14:06:23
Player;Give us the gossip, please! #time=2:14:06:26
Anetta;hello? #time=2:14:06:33
Kalil;... #time=2:14:06:40
Kalil;Okay. #time=2:14:06:43
Kalil;I will do it - *for the sake of {PlayerName()} alone* #time=2:14:06:45


* [You'll tell us anyway.]
Player;Come on, Kalil. #time=2:14:06:23
Player;You'll tell us whether we ask you to or not. #time=2:14:06:26
Kalil;I admire your bravery suggesting that free will is an illusion, but alas: #time=2:14:06:32
Kalil;no #time=2:14:06:37
Kalil;...i am going to tell you tho #time=2:14:06:43
-
Kalil;Apparently, Damien's been trading invites to his party for snogs. #time=2:14:06:47
Hema;Scummy, but checks out. #time=2:14:06:50
Kalil;Word is...a teacher took the deal. #time=2:14:06:53
Anetta;ewww! #time=2:14:06:57
Jessie;No way #time=2:14:07:00
Jessie;Isn't that illegal here? #time=2:14:07:03
Kalil;Age of consent is 16 chum. #time=2:14:07:07
Kalil;Only way it would be illegal is if he didn't want it. <sprite name="Wink"> #time=2:14:07:10
Tanya;That isn't Right. #time=2:14:07:12
Kalil;Yeah it is? #time=2:14:07:15
Kalil;I can send you a link if you want, but the age of consent *is* 16, and we're 17 #time=2:14:07:18
Kalil;Damien included. #time=2:14:07:20
Tanya;No. #time=2:14:07:22
Tanya;I mean Talking about It. #time=2:14:07:26
Hema;it's been less than a day since people even *heard* about the party #time=2:14:07:29
Hema;theres a good chance Damien is spreading this stuff himself so he'll have a chance with ANYONE <sprite name="Tongue_Out"> #time=2:14:07:34
Hema;if any snogs were exchanged I'd be legitimately surprised #time=2:14:07:37
Hema;this is all theoretical #time=2:14:07:40
Hema;probably #time=2:14:07:42
Jessie;Snogging is making out right #time=2:14:07:45
Hema;...you didn't do much research into your study abroad program, did you #time=2:14:07:48
Jessie;I really didnt #time=2:14:07:52
Jessie;what's a tuppence and why does everyone have a different answer #time=2:14:07:55
Anetta;haha #time=2:14:07:58
Jessie;<sprite name="Smile">	#time=2:14:08:01
Kalil;Playing devil's advocate #time=2:14:08:03
Kalil;Let's say Damien snogged a teacher for real #time=2:14:08:06
Kalil;Would it be that bad? #time=2:14:08:09
Kalil;Damien gets a snog out of it, and the teacher gets an invite to a cool party filled with OTHER eligible young souls. #time=2:14:08:14
Tanya;I think I've figured It out. #time=2:14:08:18
Kalil;Oh? #time=2:14:08:20
Tanya;You Think you're Being Funny. #time=2:14:08:26
Kalil;...That's it? #time=2:14:08:32
Kalil;You gotta admit I'm at least a *bit* funny <sprite name="Wink"> #time=2:14:08:35
	* * [Not really.]
	Player;Not really Kalil. #time=2:14:08:38
	Player;I'm with Tanya. #time=2:14:08:40 
	Player;This topic has a lot of serious sides we shouldnt be making light of. #time=2:14:08:44
	
	
	* * [Where did you hear this?]
	Player;Where did you hear about all of this in the first place? #time=2:14:08:38
	Player;Is Damien even known for being a ladies man or whatever? #time=2:14:08:43
	- -
	Kalil;Listen #time=2:14:08:46
	Kalil;The Rebelrousers have *connections* #time=2:14:08:51
	Kalil;a couple of them know people who SAW things #time=2:14:08:54
	Tanya;Really? #time=2:14:08:56
	Tanya;Eyewitnesses? #time=2:14:09:00
	Kalil;Well, they knew people who knew people who could have seen some things. #time=2:14:09:03
	Kalil;It's a reliable network. #time=2:14:09:06
	Kalil;And yeah, Damien is known to be a bit of a Lothario if he gets half the chance #time=2:14:09:08
	Kalil;His taller, slightly less loathsome friend too #time=2:14:09:12
	Kalil;i think the name was kyle? #time=2:14:09:15
	Kalil;I know its an extremely Generic White Guy name #time=2:14:09:17
	Kalil;Like "Ken". #time=2:14:09:20
	Tanya;Did Kyle ever Do anything to You? #time=2:14:09:24
	Kalil;One time I saw him wearing a faded Transformers 2 shirt and i asked him if he liked that movie #time=2:14:09:30
	Kalil;and he said "Yeah, it's pretty cool". #time=2:14:09:34
	Kalil;that was the day I learned to Hate #time=2:14:09:38
	Anetta;fair #time=2:14:09:41
	Anetta;<sprite name="Tongue_Out"> #time=2:14:09:43
	Tanya;Have you ever Met Kyle, Kalil? #time=2:14:09:45
	Damien;I just told you #time=2:14:09:49
	Damien;he taught me to hate #time=2:14:09:51
	Tanya;In other words: #time=2:14:09:53
	Tanya;You're dragging Another name through the Mud for a conversation that is Problematic at Best. #time=2:14:09:55
	Tanya;Slandering someone you barely Know along the way of showing how Cool and Funny You think it is to discuss the equivalent of preying on a minor. #time=2:14:09:59
	Tanya;Grooming. #time=2:14:10:02
	Tanya;It isn't funny. #time=2:14:10:02
	Tanya;It isn't cool. #time=2:14:10:04
	Tanya;And I'm disappointed I have to Tell you that, Kalil. #time=2:14:10:07 
	Jessie;wow #time=2:14:10:10
	Kalil;... #time=2:14:10:17
	Kalil;What do you think teacher tongue tastes like? #time=2:14:10:26
	Kalil;Seriously--is it like worn smooth from being used so much or What #time=2:14:10:30
	Hema;what did I come back to?? #time=2:14:10:32
	Kalil;I WANT TO KNOW is all! #time=2:14:10:35
	Kalil;Is it better for being aged? #time=2:14:10:39
	Kalil;Worse? #time=2:14:10:41
	Kalil;is there a hint of the *forbidden* #time=2:14:10:44
	Tanya;I'm Done. #time=2:14:10:46
	Kalil;Come on! #time=2:14:10:49
	Kalil;tanya #time=2:14:10:51
	Kalil;Tanya! #time=2:14:10:55
	Kalil;We didn't even go over whether Damien went for a feel! #time=2:14:11:01
	Kalil;What was even the gender of the teacher? #time=2:14:11:03
	Kalil;There's so many questions, right?! #time=2:14:11:06
		* * * [CUT. IT. OUT.]
		Player;Tanya already left, Kalil. #time=2:14:11:09
		Player;None of this is getting better. #time=2:14:11:12
		Player;Cut it out already. #time=2:14:11:16
		Kalil;See, this is the shit I'm talking about. #time=2:14:11:18
		Kalil;You lot don't appreciate me #time=2:14:11:20
		Kalil;I bring you PRIMO gossip #time=2:14:11:22
		Kalil;tip-top material, here #time=2:14:11:25
		Kalil;And you don't even want to talk about it. #time=2:14:11:29
		Kalil;We'll take Hema's "Oh, I heard there VAGUE NEWS OF A PARTY" crap all day, like we don't already hear that kind of thing every other week #time=2:14:11:32
		Kalil;Kalil brings something to the table? #time=2:14:11:38
		Kalil;Something of *substance*? #time=2:14:11:40
		Kalil;Suddenly its the bloody inquisition. #time=2:14:11:43
		Kalil;You lot know what I really want to know? #time=2:14:11:46
		Kalil;If Damien got EXTREMELY excited, and was close enough to the teacher to *prick* them #time=2:14:11:49
		Kalil;shall we say #time=2:14:11:51
		Kalil;and the teacher shuddered every time they thought about it, every moment of the day #time=2:14:11:53
		Jessie;Dude #time=2:14:11:56
		Jessie;I'm stepping out too #time=2:14:12:01
		Jessie;Youre crossing lines man #time=2:14:12:03
		Kalil;The best comedians do. #time=2:14:12:06
		Kalil;Good riddance. #time=2:14:12:08
		Kalil;Hema, you on your hypocritical way out too? #time=2:14:12:12
		Kalil;Figures. #time=2:14:12:19
		Kalil;Anetta? #time=2:14:12:22
		Anetta;ive got homework to do... #time=2:14:12:26
		Kalil;Of course you do. #time=2:14:12:28
		Anetta;ill be rght back as soon as im done!! #time=2:14:12:31
		Kalil;Doesn't matter either way. #time=2:14:12:34
		Kalil;See you then. #time=2:14:12:36
		Kalil;You too, {PlayerName()}. #time=2:14:12:40
		Kalil;Don't let the digital door hit you on your way out. #time=2:14:12:42
		~ KalilFunny = false
		
		
		* * * [How many more questions??]
		Player;How many more questions can you have?! #time=2:14:11:09
		Kalil;Easy: #time=2:14:11:11
		Kalil;snog length #time=2:14:11:14
		Kalil;lip size #time=2:14:11:16
		Kalil;height difference #time=2:14:11:18
		Kalil;location #time=2:14:11:20
		Kalil;degree o' intimacy #time=2:14:11:22
		Kalil;erection? #time=2:14:11:24
		Kalil;has the teacher just been feeling the phantom of the little prick of our little prick all day, shuddering every time they think about it? #time=2:14:11:28
		Kalil;*questions* #time=2:14:11:32
		Jessie;Dude #time=2:14:11:35
		Kalil;Mmmhmm #time=2:14:11:37
		Jessie;I'm out #time=2:14:11:40
		Jessie;Youre crossing lines man #time=2:14:11:43
		Kalil;The best comedians do. #time=2:14:11:47
		Kalil;Good riddance. #time=2:14:11:50
		Kalil;Hema, you on your way out too? #time=2:14:11:53
		Kalil;Figures. #time=2:14:12:00
		Kalil;Anetta? #time=2:14:12:04
		Anetta;ive got homework to do... #time=2:14:12:07
		Kalil;Of course you do. #time=2:14:12:09
		Anetta;ill be rght back as soon as im done tho!! #time=2:14:12:12
		Kalil;Doesn't matter either way. #time=2:14:12:15
		Kalil;See you then. #time=2:14:12:17
		Kalil;You too, {PlayerName()}. <sprite name="Wink"> #time=2:14:12:21
		Kalil;Maybe next time we'll have a crowd that can TAKE A JOKE #time=2:14:12:23
		Kalil;god #time=2:14:12:26
		~ KalilFunny = true
		- - -
		Hema;damien? #time=2:17:43:23
		Hema;more like LAMEien #time=2:17:43:28
		Hema;am I right?? #time=2:17:43:31
		Kalil;everyone's over it. #time=2:17:43:33
		Kalil;can you not? #time=2:17:43:35
		Hema;okay #time=2:17:43:38
		Hema;haha #time=2:17:43:40
		Hema;harsh... #time=2:17:43:43
		Hema;I was thinking we could get some dinner tonight. #time=2:17:43:48
		Hema;especially after all the awkwardness earlier. #time=2:17:43:51
		Hema;anyone up for it? #time=2:17:43:53
		Anetta;my parents wnt to see movies tnght #time=2:17:43:56
		Anetta;its half-off day at the cinema #time=2:17:43:58
		Anetta;only comes once a month #time=2:17:44:00
		Anetta;a dble feature too, so they rlly dont want to miss it #time=2:17:44:03
		Anetta;srry #time=2:17:44:05
		Anetta;would totally cme <sprite name="Frown"> #time=2:17:44:08
		Hema;That's okay sweetie #time=2:17:44:10
		Hema;<sprite name="Smile"> #time=2:17:44:13
		Hema;We'll find time. #time=2:17:44:16
		Kalil;sorry for the delay i'm out #time=2:17:44:18
		Kalil;Jamie said they wanted to hang out at the pub, so here i am #time=2:17:44:22
		Hema;Who's Jamie? #time=2:17:44:25
		Hema;They're free to come along, or we can join you? #time=2:17:44:28
		Kalil;Rebelrouser #time=2:17:44:30
		Kalil;later #time=2:17:44:32
		Hema;oh, okay. #time=2:17:44:34
		Hema;good luck, I guess #time=2:17:44:36
		Hema;anyone else? #time=2:17:44:38
		Jessie;I can come along #time=2:17:44:41
		Jessie;Let's get something trashy and cheap #time=2:17:44:44
		Hema;for SURE! #time=2:17:44:47
		Hema;how about you Tanya? Can you come out? #time=2:17:44:49
		Tanya;No. #time=2:17:44:53
		Tanya;My Apologies. #time=2:17:44:56
		Hema;it's okay #time=2:17:44:59
		Hema;...can I ask you a question? #time=2:17:45:05
		Tanya;Of Course. #time=2:17:45:08
		Hema;Are you not coming because of the Damien stuff we were talking about earlier? #time=2:17:45:12
		Tanya;Absolutely Not. #time=2:17:45:15
		Tanya;I just Can't. #time=2:17:45:18
		Tanya;I'll see you later for Sure. #time=2:17:45:20
		Hema;gotcha. Thanks for the update. #time=2:17:45:23
		Hema;{PlayerName()}? #time=2:17:45:26
		Hema;you've been a bit quiet! #time=2:17:45:28
		#time=2:17:45:31
		Hema;will you be able to join me and Jessie? -> day2_evening_group_sequence1
		
=== day2_evening_group_sequence1 ===

* [Not sure...]
Player;I'm not sure... #time=2:17:45:34
Player;I want to, but mum has a lecture tonight about her medieval history course. #time=2:17:45:36
Player;Want to make sure I support her/don't get myself grounded by ditching early <sprite name="Tongue_Out"> #time=2:17:45:41
Hema;oh of course!! #time=2:17:45:44
Hema;tell your mum I said congratulations and good luck! #time=2:17:45:47
Player;I will! #time=2:17:45:49
Hema;okay, that's everyone accounted for #time=2:17:45:54
Hema;talk more soon y'all!! #time=2:17:45:57
Hema;I'll message you privately Jessie #time=2:17:46:00
Jessie;Cool #time=2:17:46:04
Jessie;Talk more soon #time=2:17:46:06
Jessie;and thanks for using y'all #time=2:17:46:08
Jessie;I really feel appreciated right now #time=2:17:46:11
Hema;*fingerguns* #time=2:17:46:14


* [I'll try!]
Player;I'll try! #time=2:17:45:34
Player;Mum has a lecture tonight about her medieval history course, but if there's a way I can make it out before the evening is over, I will #time=2:17:45:37
Hema;oh of course! #time=2:17:45:39
Hema;tell your mum I said congratulations!! #time=2:17:45:41
Hema;and good luck!!! #time=2:17:45:43
Hema;exclamation points!!!!!! #time=2:17:45:46
Player;Haha for sure! #time=2:17:45:49
Hema;okay, that's everyone accounted for #time=2:17:45:54
Hema;talk more soon y'all! #time=2:17:45:57
Hema;I'll message you privately Jessie #time=2:17:46:00
Jessie;Cool #time=2:17:46:01
Jessie; Talk more soon #time=2:17:46:04
Jessie;and thanks for using y'all #time=2:17:46:07
Jessie;I really feel appreciated right now #time=2:17:46:11
Hema;*fingerguns* #time=2:17:46:14
-
Hema;can we outlaw sports #time=3:06:25:08
Hema;just until we come to terms with the fact that just because someone is good at them doesn't mean they wouldn't rather be asleep #time=3:06:25:12
Hema;or doing literally anything else #time=3:06:25:14
Hema;say #time=3:06:25:18
Hema;watching the new episode of an extremely trashy anime they've been looking forward to all week #time=3:06:25:20
Anetta;do you want to outlaw sprts in stories or jst in gneral? #time=3:06:25:26
Hema;in general if it isnt too much trouble #time=3:06:25:30
Anetta;got u fam #time=3:06:25:35
Hema;hahaha #time=3:06:25:38
Anetta;done #time=3:06:25:45
Anetta;as of three seconds ago, the world of Asssassins of Mars no longer has sports #time=3:06:25:49
Hema;Next: the world #time=3:06:25:52
Anetta;Damn Right. #time=3:06:25:55
Hema;how is that universe coming by the by? #time=3:06:25:59
Hema;you uploaded some fantastic sketches not long ago #time=3:06:26:01
Anetta;good! #time=3:06:26:06
Anetta;mum found a rlly cool old architecture book at a chrity shop #time=3:06:26:10
Anetta;the print is small so a lot of the words jumble and im not reading as fast as id like but im learning SO MUCH #time=3:06:26:13
Anetta;the Chamber of the Assassin Empress is going to blow your fcking minds #time=3:06:26:16
Hema;DAMN #time=3:06:26:19
Hema;RIGHT #time=3:06:26:21
Anetta;oh #time=3:06:29:37
Anetta;my Challenge stuff is going to take up a lot of time during and after class today #time=3:06:29:40
Anetta;i know we usually like to text during the day #time=3:06:29:44
Anetta;can you let me knw if i missed anythng imprtant when i come back? #time=3:06:29:46
Hema;are you alleging #time=3:06:29:49
Hema;we would text #time=3:06:29:52
Hema;during class #time=3:06:29:55
Anetta;... #time=3:06:29:59
Hema;you can count on me anetta #time=3:06:30:08
Hema;<sprite name="Wink"> #time=3:06:30:10
Anetta;<sprite name="Smile"> #time=3:06:30:14
Kalil;WHAT UP PARTY PLAYAS #time=3:08:34:14
Jessie;well those are certainly words you just said #time=3:08:34:17
Hema;WHAT UP KALIL #time=3:08:34:19
Kalil;I'm making lists #time=3:08:34:23
Kalil;I'm checking them twice #time=3:08:34:26
Kalil;Every plan is both naughty AND nice #time=3:08:34:28
Kalil;until otherwise observed #time=3:08:34:31
Jessie;i know this science thing! #time=3:08:34:34
Jessie;science is good! #time=3:08:34:36
Jessie;(TM) #time=3:08:34:38
Hema;i hate to sound skeptical but...what's really going on with you today? #time=3:08:34:40
Hema;you're...chipper #time=3:08:34:44
Kalil;There's a party on the horizon #time=3:08:34:47
Kalil;The sun isnt shining #time=3:08:34:49
Kalil;because it's london #time=3:08:34:52
Kalil;and we're all FREE #time=3:08:34:56
Kalil;Free to make choices. #time=3:08:35:00
Kalil;to reach our full potential #time=3:08:35:02
Kalil;to really, truly live #time=3:08:35:04
Kalil;no regrets #time=3:08:35:07
#time=3:08:35:11
Kalil;... {PlayerName()} knows what I'm talking about. -> day3_morning_group_sequence1

=== day3_morning_group_sequence1 ===

* [Sure!]
Player;Sure! #time=3:08:35:13
Player;mmhmm #time=3:08:35:16
Player;That me #time=3:08:35:19
Player;A person who knows things #time=3:08:35:21
	
	
* [Um, no?]
Player;Um, no? #time=3:08:35:13
Player;What are you talking about Kalil? #time=3:08:35:16
Kalil;Really? #time=3:08:35:19
Kalil;Okay. #time=3:08:35:21
-
Kalil;Right. #time=3:08:35:25
Kalil;If we connect at the Korean place on Chester, it should only be a brisk 10 minute walk to the tube. #time=3:08:35:27
Kalil;From there, it can't be more than another 5 to get to Damien's place. #time=3:08:35:30
Hema;you know where Damien lives? #time=3:08:35:32
Kalil;I know the part of town. #time=3:08:35:35
Kalil;I played a gig there once, and saw him walking home with his friends #time=3:08:35:38
Kalil;He was pissed. #time=3:08:35:40
Kalil;(that's 'drunk' in the Queen's english, Jessie) #time=3:08:35:44
Jessie;thank you #time=3:08:35:47
Hema;You never did tell us where we could see your gigs #time=3:08:35:50
Kalil;Gonna get to the party #time=3:08:35:53
Kalil;get ever so slightly drunk #time=3:08:35:55
Kalil;look in the kitchen for where he's keeping the GOOD snacks #time=3:08:35:57
Kalil;and have a good time, generally #time=3:08:36:00
Kalil;Who's with me? #time=3:08:36:04
Tanya;You've been Invited? #time=3:08:36:06
Kalil;No--not yet. #time=3:08:36:10
Kalil;But that doesn't mean I can't have my shit together ahead of time. #time=3:08:36:12
Kalil;Or make sure that I go there with someone I really care about. #time=3:08:36:14
Jessie;Us! #time=3:08:36:17
Hema;yeah! #time=3:08:36:19
Hema;friendship!! #time=3:08:36:21
Jessie;I genuinely hope we get in. #time=3:08:36:24
Jessie;Haven't heard anything on that front yet personally #time=3:08:36:26
Hema;i think we'll be fairly safe--we aren't too many steps removed from that crowd. #time=3:08:36:29
Kalil;So, what do you say Tanya? #time=3:08:36:32
Tanya;I can Attempt to be Available, Certainly. #time=3:08:36:37
Tanya;<sprite name="Soft_Smile"> #time=3:08:36:40
Kalil;I mean *go* #time=3:08:36:43
Kalil;Together #time=3:08:36:45
Kalil;Me and you. #time=3:08:36:48
Tanya;oh #time=3:08:36:51
Tanya;Ooh. #time=3:08:36:54
Kalil;What do you say? <sprite name="Smile"> #time=3:08:37:01
Kalil;<sprite name="Tongue_Out"> #time=3:08:37:03
Tanya;I don't know what to say. #time=3:08:37:06
Kalil;Yes, hopefully! #time=3:08:37:08
Hema;does this have anything to do with your apology earlier by chance? #time=3:08:37:11
Kalil;No. Not at all. #time=3:08:37:13
Kalil;That was just the right thing to do. #time=3:08:37:17
Jessie;He apologized to you too? #time=3:08:37:19
Kalil;I apologized to everyone personally. #time=3:08:37:22
Hema;"I was a dick yesterday. I know that, you know it, the entire group knows it." #time=3:08:37:26
Hema;"We don't need to go over that again." #time=3:08:37:31
Hema;"I'm sorry. I could bring up a bunch of stuff that's going on in my life or the feelings I've been dealing with to try to justify it, but I won't." #time=3:08:37:38
Hema;"I'm sorry." #time=3:08:37:42
Hema;"That's it." #time=3:08:37:50
Jessie;Those are the same messages he sent me! #time=3:08:37:53
Kalil;Let's not get sidetracked. #time=3:08:37:55
Kalil;I risked a lot to ask Tanya this, and I apologized to you all *personally* for a reason. #time=3:08:37:57
Jessie;You made an apology into a form-letter dude. #time=3:08:38:00
Kalil;That....doesn't mean I didn't mean it #time=3:08:38:03
	* * [What the hell Kalil?]
	Player;What the hell Kalil? #time=3:08:38:05
	Player;I thought you were sorry! #time=3:08:38:08
	Kalil;I AM sorry. #time=3:08:38:11
	Kalil;That's why I sent you all those messages. #time=3:08:38:14
	Jessie;Which you *copied* #time=3:08:38:16
	Hema;the words sounded good Kalil, but I'm really starting to doubt what you did or didnt mean #time=3:08:38:18
	Kalil;Listen, I've been going through a lot lately. #time=3:08:38:20
	Kalil;Today has been a Lot. #time=3:08:38:23
	Kalil;I meant every word I said to each of you. #time=3:08:38:26
	Kalil;I don't know what more you want from me. #time=3:08:38:30
	
	* * [Were you going to tell us?]
	Player;When were you planning to tell us? #time=3:08:38:05
	Player;*Were* you planning to tell us? #time=3:08:38:07
	Player;Ever? #time=3:08:38:09
	Kalil;I was sorry. I AM sorry. #time=3:08:38:12
	Kalil;That's why I sent y'all those messages. #time=3:08:38:15
	Jessie;Which you *copied* #time=3:08:38:17
	Hema;the words sounded good Kalil, but I'm really starting to doubt what you did or didnt mean #time=3:08:38:20
	Kalil;y'all? #time=3:08:38:23
	Kalil;Listen, I've been going through a lot lately. #time=3:08:38:25
	Kalil;Today has been a Lot. #time=3:08:38:27
	Kalil;I meant every word I said to each of you. #time=3:08:38:30
	- -
	Tanya;I don't know what you think you can get from me Kalil. #time=3:08:38:32
	Kalil;Thank GOD #time=3:08:38:36
	Kalil;Finally. #time=3:08:38:38
	Kalil;I thought you left. #time=3:08:38:41
	Kalil;I didn't think I'd get anything from you. #time=3:08:38:43
	Kalil;I wasn't trying to #time=3:08:38:45
	Kalil;Tanya, ever since we met I've felt something I didn't have the words to express until now. #time=3:08:38:48
	Kalil;I really, really care about you. #time=3:08:38:51
	Kalil;No pressure, but me inviting you to this party...It's me finally inviting you to a piece of myself I almost buried. #time=3:08:38:55
	Kalil;I don't want to bury it anymore. #time=3:08:39:00
	Tanya;years? #time=3:08:39:03
	Tanya;You've been thinking about me this way for literal years? #time=3:08:39:06
	Kalil;Yes. #time=3:08:39:08
	Kalil;Sixth form will be over any day now. We take the chances we have. No regrets. #time=3:08:39:12
	Kalil;not anymore #time=3:08:39:14
	Kalil;...so? #time=3:08:39:20
	Tanya;Hema, did you know about this? #time=3:08:39:24
	Hema;no. not at all. #time=3:08:39:27
	Hema;I'm as surprised as you are. #time=3:08:39:30
	Kalil;As I said: buried #time=3:08:39:32
	Tanya;Did you know Jessie? #time=3:08:39:34
	Jessie;I wasn't...certain. #time=3:08:39:38
	Kalil;Bullshit. #time=3:08:39:40
	Kalil;He didn't know. #time=3:08:39:43
	Jessie;I noticed things. #time=3:08:39:45
	Kalil;bull #time=3:08:39:48
	Kalil;shit #time=3:08:39:50
	Tanya;{PlayerName()}? #time=3:08:39:52
	Tanya; Did you? #time=3:08:39:55
	Kalil;Why do you keep asking the others? What are you trying to find? #time=3:08:39:57
		* * * [I had no idea.]
		Player;I promise you, Tanya. #time=3:08:40:00
		Player;I had no idea. #time=3:08:40:03
		Kalil;you LIAR #time=3:08:40:05
		Kalil;We were just talking about this a couple hours ago! #time=3:08:40:10
		Kalil;You knew! #time=3:08:40:14
		Kalil;i swear to you Tanya #time=3:08:40:17
		Kalil;{PlayerObjectivePronoun()} knew #time=3:08:40:19
		Kalil;There's been so much all leading to this. I've made mistakes. Please. #time=3:08:40:21
		Kalil;Let's not do this over text. Let's meet in person. At lunch. #time=3:08:40:24
		Kalil;we can work this all at out then #time=3:08:40:26
		Kalil;You don't have to type anything now #time=3:08:40:29
		Tanya;We're still in the Middle of Class, Kalil. #time=3:08:40:30
		Tanya;. #time=3:08:40:33
		Tanya;We should get Back to it. #time=3:08:40:42
		Kalil;yeah #time=3:08:40:54
		Kalil;good #time=3:08:40:56
		Kalil;good idea #time=3:08:40:59


		* * * [I am so sorry.]
		Player;... #time=3:08:40:00
		Player;I am so sorry, Tanya. #time=3:08:40:05
		Kalil;you hypocritical piece of shit #time=3:08:40:08
		Kalil;You knew! #time=3:08:40:12
		Kalil;i swear to you Tanya #time=3:08:40:17
		Kalil;{PlayerObjectivePronoun()} knew #time=3:08:40:19
		Kalil;There's been so much all leading to this. I've made mistakes. Please. #time=3:08:40:21
		Kalil;Let's not do this over text. Let's meet in person. At lunch. #time=3:08:40:24
		Kalil;we can work this all at out then #time=3:08:40:26
		Kalil;You don't have to type anything now #time=3:08:40:29
		Tanya;We're still in the Middle of Class, Kalil. #time=3:08:40:30
		Tanya;. #time=3:08:40:33
		Tanya;We should get Back to it. #time=3:08:40:42
		Kalil;yeah #time=3:08:40:54
		Kalil;good #time=3:08:40:56
		Kalil;good idea #time=3:08:40:59
		- - -
		Anetta;hey evryone! #time=3:16:11:59
		Anetta;im back from volnteering #time=3:16:12:02
		Anetta;i can introdce you to the challenge people at some point if you want <sprite name="Smile"> #time=3:16:12:05
		Anetta;rlly good stuff we're doing #time=3:16:12:08
		Anetta;oh wow #time=3:16:12:13
		Anetta;yall DID text during class #time=3:16:12:15
		Anetta;lot to catch up on #time=3:16:12:18
		Anetta;hema? are you here? #time=3:16:12:22
		Anetta;did i miss anything important? #time=3:16:12:25
		Anetta;k. i can catch up myself #time=3:16:12:45
		Anetta;no bother <sprite name="Smile"> #time=3:16:12:48
		Hema;hey Anetta! #time=3:16:12:56
		Hema;so sorry for the delay--you really dont want to go through todays messages yourself #time=3:16:12:58
		Hema;i'll message you #time=3:16:13:01
		Hema;Anetta? #time=3:16:13:08
		Anetta;whoa #time=3:16:13:10
		Hema;sweetie, no #time=3:16:13:12
		Hema;i'm messaging you privately #time=3:16:13:15
		Hema;please check #time=3:16:13:18
		Anetta;what the fuck #time=3:16:13:21
		Anetta;what the FUCK #time=3:16:13:27
		Anetta;kalil? #time=3:16:13:32
		Anetta;Tanya? #time=3:16:13:34
		Anetta;did that really happen? #time=3:16:13:36
		Anetta;what even #time=3:16:13:39
		Anetta;what #time=3:16:13:41
		Hema;I'm trying to explain in a private chat #time=3:16:13:43
		Kalil;its not a big deal #time=3:16:13:47
		Kalil;you read the messages. it's done #time=3:16:13:50
		Kalil;drop it #time=3:16:13:52
		Anetta;dnt tell me to DROP IT #time=3:16:13:54
		Anetts;why would you ask Tanya... #time=3:16:13:58
		Anetta;you've felt lke that for this lng? #time=3:16:14:00
		Anetta;oh god #time=3:16:13:14:04
		Kalil;You CAN read, right? #time=3:16:14:07
		Kalil;It's all there #time=3:16:14:10
		Anetta;dont #time=3:16:14:13
		Anetta;dont tlk to me like that #time=3:16:14:17
		Kalil;You clearly want me to say SOMETHING Anetta. #time=3:16:14:19
		Kalil;Make up your mind! #time=3:16:14:22
		Kalil;Its been a long day #time=3:16:14:24
		Anetta;my mind says that your apology today was shite #time=3:16:14:29
		Anetta;and you nver answred anyone's questions about why #time=3:16:14:33
		Kalil;Maybe if people spoke to you outside of group chat, you'd understand the full scope of the situation. #time=3:16:14:37
		Tanya;There isn't Much to Understand. #time=3:16:14:39
		Kalil;Really? #time=3:16:14:41
		Kalil;I thought there was more to what happened today than you rejecting me because you think I'm not smart or good looking or disgustingly *fake* enough to keep up with you pretending to be happy with your other rich Catholic friends #time=3:16:14:44
		Kalil;or was that it? #time=3:16:14:50
		Anetta;...you keep pushing people away kalil #time=3:16:14:54
		Kalil;Ha! That's funny coming from you. #time=3:16:14:57
		Anetta;wht does tht mean? #time=3:16:15:00
		Anetta;people tlk to me a lot #time=3:16:15:03
		Kalil;Oh really? #time=3:16:15:05
		Kalil;Do they? #time=3:16:15:08
		Kalil;Saying where the class placements are going to be posted doesn't count. #time=3:16:15:12
		Jessie;You really need to shut up Kalil #time=3:16:15:14
		Kalil;oh you're one to TALK aren't you Jessie #time=3:16:15:17
		Kalil;Youre the perfect example! #time=3:16:15:19
		Kalil;Did Jessie text you about the Smiths at 5 oclock this morning, Anetta? #time=3:16:15:23
		Kalil;He texted me. #time=3:16:15:25
		Kalil;He texted Tanya. #time=3:16:15:28
		Kalil;He texted {PlayerName()}. #time=3:16:15:31
		Kalil;I bet he texted Hema too #time=3:16:15:33
		Kalil;Laughing at you #time=3:16:15:35
		Jessie;None of that is true! #time=3:16:15:38
		Kalil;You aren't in the loop. #time=3:16:15:40
		Kalil;There are people who are close, and people who are far. #time=3:16:15:43
		Kalil;You, are in a galaxy far, far away from the rest of us. #time=3:16:15:46
		Kalil;Just like your stories. #time=3:16:15:49
		Anetta;... #time=3:16:15:53
		Anetta;frnds don't say stuff like that to each other #time=3:16:15:57
		Kalil;I wouldn't call us 'frnds'. #time=3:16:16:00
		Kalil;Friends, maybe. #time=3:16:16:03
		Kalil;But not frnds. #time=3:16:16:06
		Hema;you're an asshole Kalil. #time=3:16:16:10
		Kalil;Am I lying? #time=3:16:16:14
		Hema;YES #time=3:16:16:16
		Jessie;Kalil #time=3:16:16:19
		Jessie;I have some *words* for you #time=3:16:16:22
		Jessie;You want me to use them here, or privately? #time=3:16:16:25
		Anetta;STOP #time=3:16:16:27
		Anetta;i can speak for myself. #time=3:16:16:31
		Jessie;i'm just trying to help #time=3:16:16:35
		Anetta;jst go jessie #time=3:16:16:38
		Kalil;Before you say anything we regret: #time=3:16:16:41
		Anetta;i know why Tanya didnt take your offer Kalil #time=3:16:16:42
		Anetta;its because shes a good person #time=3:16:16:44
		Anetta;and you arent #time=3:16:16:46
		Anetta;Youre the poor little rich boy who cares more about strangers stroking your ego and thinking youre authentic than having friends who know they can trust you. #time=3:16:16:49
		Anetta;You mistreat the people who care about you most so you can worry about the people who couldnt give less of a shit about your crappy band or floppy hair or perfect bone structure. #time=3:16:16:51
		Anetta;You think youre entitled to a date because you pretend to be someones friend. #time=3:16:16:56
		Anetta;So youre right #time=3:16:17:01
		Anetta;I wouldn't call us Friends #time=3:16:17:04
		Anetta;or frnds either #time=3:16:17:06
		Anetta;Because i dont need a "Friend" like that. #time=3:16:17:09
		Kalil;I hope that speech made you feel better. #time=3:16:17:17
		Kalil;Let's see if you get invited to the party. #time=3:16:17:23
		Anetta;You dont get the last word. #time=3:16:17:26
		Kalil;yes i do #time=3:16:17:28
		Anetta;Go fuck yourself. #time=3:16:17:30
		Anetta;Posh bellend. #time=3:16:17:33
		Kalil;That #time=3:16:17:37
		Kalil;Is a low blow #time=3:16:17:40
		Kalil;You know how I feel about my parents politics. #time=3:16:17:43
		Anetta;Sorry #time=3:16:17:46
		Anetta;It takes a low blow to reach into that hole you dug for yourself. #time=3:16:17:50
		Anetta;peace #time=3:16:17:53
		Hema;so we've got another fine morning of drizzle in our hnads #time=4:06:25:08
		Hema;Hands #time=4:06:25:12
		Hema;hi my name is hema and i beli eve no one should havet o be awake at 6 #time=4:06:25:17
		Hema;why's the coach so excited about laps? #time=4:06:47:20
		Anetta;we may nevr know #time=4:06:47:23
		Hema;waaaaaait #time=4:06:47:27
		Hema;I can see you in the bleachers! #time=4:06:47:32
		Anetta;you see #time=4:06:47:35
		Anetta;nthing #time=4:06:47:38
		Hema;hahaha #time=4:06:47:41
		Hema;i guess if I have an audience i shouldn't disappoint #time=4:06:47:45
		Anetta;you arent! <sprite name="Smile"> #time=4:06:47:49
		Anetta;i actually didnt know you were so fast until today #time=4:06:47:53
		Hema;oh just wait until I do this next relay #time=4:06:47:56
		Hema;i'm about to blow your MIND #time=4:06:48:00

		Jessie;Wait did you have a sleepover? #time=4:07:10:35
		Jessie;An honest to goodness PJ party? #time=4:07:10:38
		Anetta;jst stayed over #time=4:07:10:42
		Anetta;no big deal #time=4:07:10:45
		Anetta;<sprite name="Tongue_Out"> #time=4:07:10:50
		Jessie;... #time=4:07:10:53
		Jessie;*sick* #time=4:07:10:57
		Jessie;It's kinda weird how you stop doing that kind of stuff just as you get old enough for it to matter #time=4:07:11:00
		Anetta;yeah #time=4:07:11:06
		Hema;giving up the things you love so you can do more of the things you think other people think you should be doing--it's the essence of adolescence! #time=4:07:11:10
		Anetta;that rhymed! #time=4:07:11:13
		Hema;wait #time=4:07:11:17
		Hema;oh shit you're right #time=4:07:11:19
		Jessie;"oh shit you're right" #time=4:07:11:23
		Jessie;the poetry just keeps flowing <sprite name="Wink"> #time=4:07:11:27
		Hema;hahaha #time=4:07:11:30
		Anetta;lol #time=4:07:11:32

		Tanya;I hope You did not Tire yourselves before Class even Starts. #time=4:07:28:05
		Hema;we're all good <sprite name="Smile"> #time=4:07:28:09
		Hema;Just the same old morning catch-up #time=4:07:28:12
		Anetta;not mch to catch up on #time=4:07:28:16
		Hema;then maybe its the morning check in #time=4:07:28:20
		Hema;Sound off! #time=4:07:28:23
		Hema;come on #time=4:07:28:29
		Hema;dont leave me hanging #time=4:07:28:32
		Kalil;Kalil here. Everything is great! #time=4:07:28:35
		Kalil;I'm chipper and full of energy at 0728 hours. Somehow. #time=4:07:28:38
		#time=4:07:28:42
		Kalil;Ready to enjoy life. -> day4_morning_group_sequence1

=== day4_morning_group_sequence1 ===

* [I'm here!]
Player;{PlayerName()}, reporting! #time=4:07:28:46
Jessie;wot wot lefttennant #time=4:07:28:50
Hema;NOPE #time=4:07:28:53
Jessie;wait what #time=4:07:28:56
Kalil;Yeah that's a hard no. #time=4:07:28:59
Jessie;what did i do #time=4:07:29:02
Kalil;you sinned against England, Jessie #time=4:07:29:05
Jessie;well that sounds serious #time=4:07:29:08
Anetta;i wouldnt wrry about it #time=4:07:29:10


* [Can we not?]
Player;Can we not? #time=4:07:28:46
Player;I don't think we're ready for this #time=4:07:28:49
Player;Especially after everything yesterday. #time=4:07:28:53
Kalil;"Time heals all wounds," in the words of the Bard. #time=4:07:28:57
Anetta;a protoplaser would be more effcient #time=4:07:29:03
Kalil;...What in the hell is a protoplaser
Anetta;i dnt think youd know how to use one #time=4:07:29:07
-
Hema;today's going to be a good day. want to know why? #time=4:07:29:12
Kalil;no #time=4:07:29:15
Hema;Thursdays mean STEW for lunch #time=4:07:29:18
Hema;and an INFERIOR vegetarian equivalent #time=4:07:29:21
Hema;because heaven knows that vegetarians of all people dont make discerning food choices #time=4:07:29:24
Jessie;Are you saying it somehow gets *worse* than mystery stew? #time=4:07:29:28
Anetta;sad truth #time=4:07:29:32
Hema;maybe you should try it and see #time=4:07:29:35
Hema;(please don't actually try it) #time=4:07:29:40
Tanya;It's time for Class everyone. #time=4:07:29:44
Tanya;Let's Focus. #time=4:07:29:48
Tanya;On learning Things. #time=4:07:29:52
Jessie;I am very much on board with this non-specific plan #time=4:07:29:55

Kalil;Speaking of "Things," what's everyone learning? #time=4:11:05:12
Kalil;In Literature we're asking why Meursault doesn't mourn his mother. #time=4:11:05:16
Kalil;I've got LOADS of ideas #time=4:11:05:20
Kalil;I could run the debate on both sides but I want to try and let some other people think it through. #time=4:11:05:23
Hema;wait #time=4:11:05:36
Hema;is this the first time we text in class #time=4:11:05:39
Hema;*about* class? #time=4:11:05:42
Jessie;we did spend a good ten minutes sharing stories about times Mr Robertson was a jerk #time=4:11:05:46
Anetta;there wre Sevral Times #time=4:11:05:51
Jessie;I'm not sure that really counts as talking about class though <sprite name="Tongue_Out"> #time=4:11:05:54
Kalil;What's everyone else up to? <sprite name="Soft_Smile"> #time=4:11:05:56
	* * [History! Hooray!]
	Player;In history making mum proud. Hopefully. #time=4:11:06:01
	Player;it turns out knowing thirty percent of the answers in advance helps! #time=4:11:06:03
	Kalil;I can imagine.  #time=4:11:06:03
	Player;Thanks, World War II documentaries! #time=4:11:06:09
	Hema;I think was there for one of those! #time=4:11:06:12
	Player;The one with actual footage or the one with the guy talking about what happened but not actually showing the field or the battle #time=4:11:06:16
	Hema;The one in colour? #time=4:11:06:21
	Hema;...were they both in colour #time=4:11:06:26
	Player;Yes #time=4:11:06:29
	Hema;damn I wish I had a spongy brain like yours #time=4:11:06:32
	Anetta;tht sounds a little inslting #time=4:11:06:35
	Anetta;like sponge-for-brains #time=4:11:06:38
	Hema;no no no thats not it #time=4:11:06:42
	Hema;it soaks up all the knowledge #time=4:11:06:45
	Anetta;srry <sprite name="Skull"> #time=4:11:06:49
	Jessie;It's all good! #time=4:11:06:52


	* * [Ugh, History...]
	Player;History...Mum's favorite subject. #time=4:11:06:01
	Player;Obviously. #time=4:11:06:04
	Player;Kinda tired of World War II documentaries #time=4:11:06:09
	Anetta;do you already know the answers? #time=4:11:06:12
	Player;a lot of them actually yeah. Grew up with it. #time=4:11:06:15
	Anetta;then do something completely diffrent in your head #time=4:11:06:18
	Anetta;sing the elemnts song #time=4:11:06:23
	Jessie;What's that? #time=4:11:06:27
	Hema;there's antimony arsenic aluminum selenium #time=4:11:06:32
	Anetta;europium zirconium lutetium vanadium #time=4:11:06:36
	Anetta;and hydrogen and oxygen and nitrogen and rhenium #time=4:11:06:40
	Kalil;And Thorium, and Thulium, and Thallium. #time=4:11:06:44
	Hema;Berilium and barium! #time=4:11:06:48
	Jessie;English chem is *weird* #time=4:11:06:51
	- -
	Tanya;Geography is proving very Useful. #time=4:11:06:56
	Kalil;Definitely! #time=4:11:07:00
	Anetta;do we choose subjects too early #time=4:11:07:03
	Anetta;before we knw what we really want? #time=4:11:07:07
	Jessie;What do you learn in Geo? #time=4:11:07:10
	Tanya;There are multiple Branches. #time=4:11:07:16
	Tanya;Physical Geography looks at Soil and the Atmosphere. #time=4:11:07:20
	Tanya;Human Geography looks at people's effect on Our World. #time=4:11:07:24
	Tanya;It goes on. #time=4:11:07:27
	Hema;didnt know that! #time=4:11:07:30
	Tanya;It's Important subject matter with many Applications. #time=4:11:07:34
	Anetta;do they say globl warming is real and terrble #time=4:11:07:38
	Anetta;or are they not allowd to #time=4:11:07:41
	Tanya;They State the Facts. #time=4:11:07:45
	Tanya;It speaks for Itself. #time=4:11:07:48
	Kalil;Facts often do. #time=4:11:07:52
	Tanya;That doesn't mean People will Listen. #time=4:11:07:56
	Tanya;What about You, Jessie? #time=4:11:08:01
	Jessie;I'm in math learning about the matrix #time=4:11:08:04
	Jessie;Not the good Matrix #time=4:11:08:07
	Jessie;or the less good ones #time=4:11:08:10
	Jessie;The boxes filled with numbers #time=4:11:08:13
	Jessie;apparently you can add, subtract or multiply matrices, but they've forgotten to tell us *why the hell we'd want to* #time=4:11:08:16
	Hema;the curse of math. #time=4:11:08:20
	Kalil;I'm sure there's soemone in the world adding matrices as we speak. #time=4:11:08:25
	Anetta;i got adding and subtrcting matrices #time=4:11:08:29
	Anetta;but i stopped listning for a second and now i dont get how you multply #time=4:11:08:32
	Anetta;why do they have to be diffrent sizes?? #time=4:11:08:35
	Jessie;I can help, if you want. #time=4:11:08:39
	Jessie;We can go over it during lunch while it's still sort of fresh in your mind #time=4:11:08:42
	Anetta;mybe #time=4:11:08:47
	Anetta;thks <sprite name="Soft_Smile"> #time=4:11:08:50

	Jessie;Holy crap I almost got a plateful of food in my face #time=4:13:48:12
	Jessie;just barely got out of the way with my life #time=4:13:48:16
	Anetta;usng your ninja reflexs #time=4:13:48:20
	Jessie;YES #time=4:13:48:22
	Jessie;...why is there no ninja emoji when you need it #time=4:13:48:26
	Hema;Is this in the cafeteria? #time=4:13:48:30
	Anetta;yea #time=4:13:48:33
	Jessie;Never mind it's on my shirt #time=4:13:48:36
	Jessie;i dont deserve the ninja #time=4:13:48:40
	Jessie;<sprite name="Sad"> #time=4:13:48:43
	Hema;im not there!! don't leave me out!! #time=4:13:48:46
	Hema;Tell me whats going on #time=4:13:48:49
	Anetta;damien flippd kyles lnch tray #time=4:13:48:52
	Anetta;now hes shouting somethng about not liking kyles tone #time=4:13:48:56
	Anetta;and party prep not going well #time=4:13:49:03
	Kalil;"Seriously? I'm the one running around sorting everything out for the party while you PRETEND to help!" #time=4:13:49:07
	Kalil;Is what Damien actually said. #time=4:13:49:10
	Anetta;whatevr #time=4:13:49:15
	Anetta;im tryng to ignore them #time=4:13:49:18
	Kalil;Kyle: "At least I'm not using the party to score girls..." #time=4:13:49:21
	Anetta;score *with* girls #time=4:13:49:24
	Tanya;Perhaps this is better Not Discussed. #time=4:13:49:27
	Kalil;"...by spreading my own rumours!" #time=4:13:49:30
	Jessie;Ok I think i got all the brown stew off #time=4:13:49:34
	Jessie;and this thing is still going apparently? #time=4:13:49:38
	Kalil;Damien: "Oh really, a girlfriend?" #time=4:13:49:44
	Kalil;Damien: "So you're pretending you haven't gone after anyone because you have a girlfriend all of a sudden?" #time=4:13:49:50
	Hema;wait does he have a gf or not? #time=4:13:49:53
	Jessie;We don't know #time=4:13:49:56
	Jessie;Damien doesn't think so #time=4:13:49:59
	Kalil;I wish I had been recording rather than typing things out. #time=4:13:50:03
	Kalil;Then we could laugh about it later. #time=4:13:50:06
	Jessie;Whoa they look like they might actually hit each other #time=4:13:50:09
	Hema;Are you three okay? #time=4:13:50:12
	Anetta;its fine #time=4:13:50:15
	Anetta;their frends are hlding them back #time=4:13:50:19
	Kalil;Not for long! #time=4:13:50:22
	Kalil;GOD they are such a mess <sprite name="Tongue_Out"> #time=4:13:50:26
	Kalil;Think a teacher will step in for once? #time=4:13:50:29
	Kalil;Wait what if its the one on Damien's snog list!! #time=4:13:50:33
	Kalil;Wouldn't that just be perfect? #time=4:13:50:37
	Kalil;Actually maybe I should be recording right now. Wouldn't want that opportunity to go to waste and regret it later... #time=4:13:50:41
	Anetta;stop it Kalil #time=4:13:50:44
	Jessie;Do you really want to be that guy? #time=4:13:50:47
	Kalil;Nah #time=4:13:50:50
	Kalil;I'm just joking #time=4:13:50:55
	Kalil;Who would want that on their phone, right? #time=4:13:51:00
	Hema;are you there too {PlayerName()}? #time=4:13:51:04
		* * * [No, stuck after class]
		Player;No #time=4:13:51:07
		Player;was talking to the teacher #time=4:13:51:10
		Player;coming now #time=4:13:51:13


		* * * [Almost there]
		Player;Was talking to the teacher but i'm almost there #time=4:13:51:07
		Player;it is #time=4:13:51:10
		Player;so far #time=4:13:51:13
		- - -
		Kalil;You know, this almost makes me feel better about going to his party. #time=4:13:51:17
		Kalil;Eating all his canapes and making fun of him and his friends behind his back... #time=4:13:51:20
		Kalil;Maybe not even showing up. #time=4:13:51:23
		Kalil;It's a win-win either way! <sprite name="Wink"> #time=4:13:51:27
		Jessie;So they've kind of calmed down now but as a last dig Kyle said for everyone to hear #time=4:13:51:30
		Hema;what jessie #time=4:13:51:34
		Hema;i NEED TO KNOW #time=4:13:51:37
		Jessie;Apparently Damien made up that teacher snogging thing #time=4:13:51:41
		Anetta;zero percnt surprised #time=4:13:51:45
		Jessie;because he wanted to get Romina to kiss him?? #time=4:13:51:48
		Anetta;that sounds lke a lie #time=4:13:51:51
		Jessie;Who is Romina and how does this make sense? #time=4:13:51:55
		Anetta;tall grl in math class #time=4:13:51:59
		Anetta;the one wth the plaits #time=4:13:52:02
		Kalil;Apparently Damien's friend heard her say she wants something casual, with no strings attached. #time=4:13:52:07
		Hema;Ok I'm finally here! #time=4:13:52:15
		Hema;why is no one shouting anymoreeee #time=4:13:52:23
		Hema;did i miss the big fight <sprite name="Sad"> #time=4:13:52:26
		Anetta;i feel bad fr romina tho #time=4:13:52:30
		Anetta;i wouldnt want my name to come up lke that #time=4:13:52:33
		Anetta;espcially not in front of everyne #time=4:13:52:36
		Hema;Where's the blood? #time=4:13:52:40
		#time=4:13:52:43
		Hema;i wanted to see blood -> day4_afternoon_group_sequence1
		
=== day4_afternoon_group_sequence1 ===

*[We were promised blood]
Player;We were promised blood #time=4:13:52:48
Player;We hunger for blood #time=4:13:52:52
Hema;where is iiiit #time=4:13:52:57


*[I'm kinda glad]
Player;I'm kinda glad. #time=4:13:52:48
Player;It's like getting here for the afterparty #time=4:13:52:51
Player;all the gossip, none of the fuss #time=4:13:52:54
Hema;but the blood #time=4:13:52:58
Hema;where is iiiiit #time=4:13:53:00
-
Jessie;All over the floor, if by "blood" you mean "food". #time=4:13:53:03
Anetta;blood stew #time=4:13:53:07
Anetta;alien #time=4:13:53:10
Anetta;corrosive #time=4:13:53:13
Kalil;This has been the perfect lunch. #time=4:13:53:16
Kalil;Watching idiots tantrums #time=4:13:53:19
Kalil;Throwing food and crap insults around... #time=4:13:53:22
Kalil;"At least I don't have a sex sock!" #time=4:13:53:25
Hema;I missed the lame insults??? #time=4:13:53:28
Anetta;"well my parnts dont need to pay for me to sleep w/someone" #time=4:13:53:31
Jessie;"No they need that money to bribe teachers so you don't get flunked" #time=4:13:53:35
Hema;What a Lame-ien comeback #time=4:13:53:40
Kalil;Douche-ien just isn't very good at this. #time=4:13:53:42
Anetta;thats cause hes a jellyfish. #time=4:13:53:45
Anetta;he has no brain and no one wants to touch him #time=4:13:53:48
Kalil;there you GO! #time=4:13:53:52
Kalil;Nice to see this side of you Anetta. #time=4:13:53:56
Anetta;<sprite name="Smile"> #time=4:13:53:59
Jessie;How can you eat *and* type this fast? #time=4:13:54:12
Jessie;I cant keep up #time=4:13:54:15
Anetta;thts what she said #time=4:13:54:18
Hema;BAM! #time=4:13:54:21
Hema;youre just on fire today #time=4:13:54:25
Kalil;Tanya--any amazing contributions? #time=4:13:54:29
Kalil;I know you have something great brewing #time=4:13:54:32
Kalil;just open the floodgates #time=4:13:54:35
Anetta;not everyne likes to diss ppl #time=4:13:54:43
Anetta;remember yesterday? #time=4:13:54:46
Hema;ANYWAY #time=4:13:54:48
Hema;I think this is officially the end of the conversation #time=4:13:54:52
Hema;I need food and time to eat it #time=4:13:54:55
Jessie;I've still got this jiggly green thing to eat #time=4:13:54:59
Jessie;Never mind, its got bits of Kyle meat in it #time=4:13:55:04
Jessie;ick #time=4:13:55:07
Anetta;<sprite name="Eggplant"> #time=4:13:55:12
Jessie;NO #time=4:13:55:15
Kalil;Hahaha #time=4:13:55:19
Hema;stop i cant eat if i'm laughinggg #time=4:13:55:22
Jessie;What's almost as good as a sleepover? #time=4:22:24:10
Hema;all-you-can-eat buffet? #time=4:22:24:14
Anetta;undergrnd skate parks with complicatd structres featured in games that rhyme with grony rawk #time=4:22:24:17
	* * [Poetry slam!]
	Player;Poetry slam! #time=4:22:24:22
	Anetta;wut #time=4:22:24:25
	Jessie;I'll uh, give {PlayerName()} points for originality, but I was going for... #time=4:22:24:30
	Jessie;TV night! #time=4:22:24:35
	Jessie;I found something that may be gold #time=4:22:24:38
	Jessie;(or fools gold--we'll have to see!) #time=4:22:24:41


	* * [DEBAUCHERY]
	Player;A night of WILD debauchery, the likes of which has never been seen before or since #time=4:22:24:22
	Hema;that's not very specific #time=4:22:24:28
	Jessie;Actually this is a *very* good answer and you'll soon see why! #time=4:22:24:32
	Jessie;I found a TV show that may be gold #time=4:22:24:36
	Jessie;(or fools gold! we'll see) #time=4:22:24:40
	- -
	Hema;so what is it? #time=4:22:24:45
	Jessie;"In the year 2156, Earth finally joins The Congregation. Millions of human tourists use intergalatic travel to visit alien space stations... #time=4:22:24:49
	Anetta;ths is kinda <sprite name="Roll_Eyes"> #time=4:22:24:55
	Hema;where's hte gold? #time=4:22:24:58
	Jessie;"...including the Black-Eye Locus, a station manned by beautiful vampires!" #time=4:22:25:03
	Hema;welp. it's an anime #time=4:22:25:07
	Anetta;lke many anime combined #time=4:22:25:10
	Jessie;It stars sexy twin vampires who own a space bar and *serve* visiting humans in more ways than one. #time=4:22:25:15
	Anetta;lol thats not gnna go well #time=4:22:25:20
	Hema;is there space racism? #time=4:22:25:30
	Hema;I cant tell if it's taking itself seriously or not #time=4:22:25:36
	Jessie;It is very much not taking itself seriously <sprite name="Tongue_Out"> #time=4:22:25:42
	Jessie;That's why I picked it. #time=4:22:25:45
	Jessie;Plus the production values were *seriously* low #time=4:22:25:48
	Anetta;could be fnny then #time=4:22:25:52
	Hema;Yeah, I can see that! #time=4:22:25:56
	Hema;agh but im being called downstairs to help with something #time=4:22:25:59
	Hema;tell me all the good bits! #time=4:22:26:03
	Hema;I'll read them when I get back #time=4:22:26:06
	Anetta;good plan <sprite name="Thumb"> #time=4:22:26:10
	Anetta;fast-forwrd to the highlghts #time=4:22:26:13
	Jessie;would love to <sprite name="Smile"> #time=4:22:26:17
	Hema;Looking forward to it!! #time=4:22:26:21
	Anetta;wht kind of sexy vampirs are they #time=4:22:26:25
	Jessie;I think they're a bit broody but also think theyre super seductive? #time=4:22:26:32
	Jessie;So they hang around the astrobar glistening in the light of a million stars, wearing slinky dresses. #time=4:22:26:37
	Anetta;wait wht age rating is ths #time=4:22:26:43
	Jessie;It says 13 so it'll just be kissing and innuendo. #time=4:22:26:48
	Anetta;hm #time=4:22:26:51
	Jessie;Okay! Y'all ready? #time=4:22:27:00
		* * * [Do it!]
		Player;Do it, Jessie! #time=4:22:27:06
		Player;Submit yourself to this for all of our sakes #time=4:22:27:10
		Jessie;Oh I will #time=4:22:27:16
		
		
		* * * [Uh no?]
		Player;Uh, no? #time=4:22:27:06
		Player;How do you prepare for vampires in space? #time=4:22:27:09
		Jessie;Just let yourself go {PlayerName()} #time=4:22:27:13
		Jessie;Sweet abandon #time=4:22:27:16
		- - -
		Jessie;Right, on to the show #time=4:22:27:21
		Jessie;I'm starting from the second episode so this will all be a bit confusing but thats the best way to watch this stuff so whatever #time=4:22:27:24
		Jessie;Quick summary - three humans arrive at the space station and hang out at the bar where they meet the vampires #time=4:22:27:32
		Jessie;(the vampires aren't sparkling, but the light always seems to hit them just right? It would be good camerawork if it weren't so over-the-top) #time=4:22:27:37
		Jessie;Vampire one is now whispering to vampire two that the humans might be wanted criminals? #time=4:22:27:47
		Anetta;why are they jst drinking and chattng then? #time=4:22:27:52
			* * * * [Space rules.]
			Player;It's space. Normal rules don't apply. #time=4:22:27:58
			Anetta;gotcha #time=4:22:28:02


			* * * * [They're daredevils.]
			Player;They're daredevils--here for the thrill of the chase. #time=4:22:27:58
			Anetta;gotcha #time=4:22:28:02
			- - - -
			Jessie;I have the answer to that question now, but it's the most ridiculous thing you can think of #time=4:22:28:12
			Anetta;pssession of illegal space rabbits? #time=4:22:28:16
			Jessie;Um...Apart from space rabbits? #time=4:22:28:20
			Anetta;<sprite name="Tongue_Out"> #time=4:22:28:24
			Jessie;It turns out they're too *inexperienced* for space. #time=4:22:28:27
			Jessie; Like they need to hook up with space people soon, otherwise everyone's in trouble #time=4:22:28:31
			Jessie;*raises eyebrows suggestively* #time=4:22:28:34
			Jessie;legal trouble #time=4:22:28:48
			Anetta;k #time=4:22:28:52
			Jessie;So #time=4:22:29:02
			Jessie;Theyve already started getting busy offscreen #time=4:22:29:05
			Anetta;ths just snds like prn #time=4:22:29:09
			Jessie;that would probably have more of a buildup #time=4:22:29:13
			Jessie;I was led to believe there would be broody longing stares #time=4:22:29:16
			#time=4:22:29:20
			Jessie;WHAT HAPPENED TO MY BROODING STARES -> day4_night_group_sequence2

=== day4_night_group_sequence2 ===

* [Are the vamps working for it?]
Player;Are the vamps even working for the sexy times? #time=4:22:29:25
Player;or is it just a somewhat invisible sexy ray kinda thing #time=4:22:29:28
Jessie;It seems like the latter #time=4:22:29:31
Jessie;buuuuut i wouldn't put it past them to make an actual sexy ray at this point #time=4:22:29:34
				
				
* [Um... I don't know]
Player;Um... #time=4:22:29:25
Player;I don't know #time=4:22:29:29
Player;? #time=4:22:29:33
Jessie;We'll find them. #time=4:22:29:37
Jessie;I *believe* #time=4:22:29:40
-
Jessie;I really wish you could see these scene transitions #time=4:22:29:44
Jessie;SO tacky #time=4:22:29:47
Jessie;And they keep using the same corridor for everything? It's like--corridor to bar to the same corridor to the bedroom to the corridor AGAIN, and then massive space windows #time=4:22:29:50
Anetta;ths is why i should make sets fr shows #time=4:22:29:56
Jessie;EXACTLY! #time=4:22:30:00
Jessie;Let's get you on one of these soon. #time=4:22:30:04
Anetta;a better one i hope #time=4:22:30:08
Jessie;oh wow. they're really going for it. #time=4:22:30:19
Jessie;Vamp 2 is cozying up to Josh, the most boring human #time=4:22:30:22
Jessie;They're in the zero gravity laser training room having floaty disco kissing times #time=4:22:30:27
Jessie;OF COURSE THEY HIT THE LASER SWITCH #time=4:22:30:35
Jessie;So now they're dodging lasers *while* they #time=4:22:30:38
Jessie;oh. oh my #time=4:22:30:41
Jessie;wow #time=4:22:30:47
Jessie;terrible, awful space twister, with only two lasers, because thats what they could afford #time=4:22:30:50
Jessie;limbs EVERYWHERE #time=4:22:30:53
*[Maybe you should stop.]
Player;Maybe you should stop, actually. #time=4:22:31:00
Player;It sounds hilarious to watch #time=4:22:31:04
Player;But its not super great to just listen to. #time=4:22:31:08
Anetta;yeah evn if its fnny #time=4:22:31:12
Anetta;its a bit weird to tlk abt #time=4:22:31:16
Jessie;ohhhhhhh #time=4:22:31:20
Jessie;I didn't realise how it sounds out of context. #time=4:22:31:26
Jessie;I promise it's hilarious! Truly terribad #time=4:22:31:29
Anetta;mybe its a guy thng too #time=4:22:31:33
Jessie;Oh god #time=4:22:31:37
Jessie;I'm not Kalil or something!! #time=4:22:31:43
Jessie;I don't want to make y'all uncomfortable #time=4:22:31:47
Jessie;I hope I didn't #time=4:22:31:53
Anetta;no #time=4:22:31:58
Anetta;it could be wrse #time=4:22:32:05
->EndEp
*[Tell me more...]
Player;...So are they still twister kissing #time=4:22:31:00
Player;Or have they moved on to more *interesting* things? #time=4:22:31:03
Jessie;IM GLAD YOU ASKED #time=4:22:31:06
Jessie;theyre definitely past the kissing stage #time=4:22:31:09
Jessie;clothes are floating off #time=4:22:31:12
Jessie;theres some zero gravity blood from where Vamp 2 bit Josh #time=4:22:31:15
Jessie;which vamp 2 is licking #time=4:22:31:18
Anetta;mybe its time to stop #time=4:22:31:22
Anetta;wth the descrptions #time=4:22:31:26
Jessie;oh #time=4:22:31:29
-
Anetta;im sure its fnny to watch #time=4:22:31:33
Anetta;but its a bit weird to tlk abt it #time=4:22:31:36
Jessie;Im sorry, Anetta. You feel the same way {PlayerName()}? #time=4:22:31:40
*[Yeah let's stop]
Player;Yeah, let's stop #time=4:22:31:45
Jessie;shoooot #time=4:22:31:48
Jessie;I didn't mean to keep going #time=4:22:31:51
Anetta;its fine #time=4:22:31:55
Anetta;maybe its a guy thng too #time=4:22:31:58
Jessie;Oh god #time=4:22:32:01
Jessie;I'm not Kalil though!! #time=4:22:32:03
Jessie;I don't want to make y'all uncomfortable #time=4:22:32:06
Jessie;I hope I didn't #time=4:22:32:09
Anetta;it could have been wrse <sprite name="Soft_Smile"> #time=4:22:32:12
->EndEp
*[I could keep going]
Player;I mean I could keep going #time=4:22:31:45
{ KalilFunny:
Anetta;You thought kalil was funny when he went on about snogging teachers {PlayerName()}... #time=4:22:31:48
Anetta;So you'd find this funny too. #time=4:22:31:53
Jessie;oh wait wait wait #time=4:22:31:56
Jessie;I'm not like Kalil! i wasnt trying to go there! #time=4:22:31:59
Anetta;srry jessie i knw you didnt njoy kalils thng #time=4:22:32:03
Anetta;its not the same #time=4:22:32:06
Jessie;no but i don't want to make you uncomfortable. #time=4:22:32:10 
Jessie;Sorry <sprite name="Sad"> #time=4:22:32:13
Jessie;I hope I didn't #time=4:22:32:15
Anetta;we're fine #time=4:22:32:23
->EndEp
- else: 
Anetta;you go on then. #time=4:22:31:48
Anetta;have a good time. #time=4:22:31:50
Jessie;No! I'm sorry Anetta #time=4:22:31:53
Jessie;I went too far #time=4:22:31:56
Jessie;i'm done now #time=4:22:31:59
Jessie;the tv is off and everything #time=4:22:32:02
Anetta;its fine #time=4:22:32:05
Anetta;maybe its a guy thng too #time=4:22:32:08
Jessie;Oh god #time=4:22:32:11
Jessie;I'm not Kalil though!! #time=4:22:32:13
Jessie;I don't want to make y'all uncomfortable #time=4:22:32:16
Jessie;I hope I didn't #time=4:22:32:19
Anetta;we're fine #time=4:22:32:23
}
-> EndEp
-
-> EndEp

=== EndEp ===

Hema;And I'm back! Reading now... #time=4:22:32:26
Jessie;I just uh, texted a whole lot #time=4:22:32:30
Jessie;speaking of: I'll stop now #time=4:22:32:34
Hema;whoa. This IS ridiculous. #time=4:22:32:46
Hema;I really get the "it's so bad it's good" vibe from this Jessie #time=4:22:32:49
Hema;Kinda weird and porny but I'm sure if we were all there we'd be having a laugh. #time=4:22:32:52
Hema;Maybe next time we can do TV night in the same room! #time=4:22:32:56
Hema;We could all vote for what show to watch and come prepared with snacks #time=4:22:32:59
Jessie;coming back from self imposed exile to say--I'd be really into that #time=4:22:33:04
Hema;I'll see if I can find something similarly ridiculous. #time=4:22:33:08
Jessie;I should get ready for bed #time=4:22:33:15
Jessie;Night all! #time=4:22:33:18
Hema;Good night <sprite name="Smile"> #time=4:22:33:22
#time=4:22:33:29
Anetta;zzz -> day5_morning_group_sequence1

=== day5_morning_group_sequence1 ===

Kalil;Well that's quite the thing to wake up to. #time=5:05:53:24
Hema;hmm? #time=5:05:53:41
Hema;is something wrong? #time=5:05:53:48
Kalil;"I'm not Kalil" #time=5:05:53:56
Hema;oh #time=5:05:54:01
Hema;i dont think Jessie meant to hurt you if that helps? #time=5:05:54:07
Hema;he was just talking about uh #time=5:05:54:11
Kalil;About the stuff I said a few days ago? #time=5:05:54:15
Kalil;Believe me--I remember #time=5:05:54:19
Hema;I'm sorry if that hurt you... #time=5:05:54:24
Kalil;You didn't say it. #time=5:05:54:28
Kalil;don't worry. #time=5:05:54:33
Kalil; I'm too tired to cause a fuss and the last thing I want to do is start another fight. #time=5:05:54:37
Hema;What brings you here so early? #time=5:05:54:43
Kalil;Just wrapped a gig on the East End #time=5:05:54:47
Kalil;Got home and couldn't sleep so I decided against the idea entirely. #time=5:05:54:51
Kalil;Not sleeping led to scrolling which led to this #time=5:05:54:56
Hema;Did the gig go well? #time=5:05:55:00
Kalil;I didn't see the people I was hoping to see. #time=5:05:55:03
Hema;were the rabblerousers there? #time=5:05:55:08
Kalil;*Rebelrousers #time=5:05:55:11
Kalil;And of course. #time=5:05:55:15
Kalil;Speaking of, I didnt see any of you there. #time=5:05:55:19
Hema;I asked where you play and you never told me! #time=5:05:55:23
Kalil;Really? #time=5:05:55:26
Kalil;huh. #time=5:05:55:32
Kalil;anyway #time=5:05:55:36
Kalil;yes #time=5:05:55:40
Kalil;its been a long day/night already and coming back didnt make it better #time=5:05:55:44
* [Want to talk about it?]
Player;Are you sure you don't want to talk about it? #time=5:05:55:49
Kalil;if I wanted to talk about it I would #time=5:05:55:55
Player;and when would you ever feel like talking? #time=5:05:55:59
Kalil;Good question. #time=5:05:56:03


* [Will we see you later?]
Player;Will we see you later? #time=5:05:55:49
Kalil;Digitally, literally, or metaphorically? #time=5:05:55:55
Player;All of the above? #time=5:05:55:59
Kalil;I dont think I have much choice #time=5:05:56:03
-
Hema;...are you going to elaborate on that? #time=5:05:56:21
Kalil;I don't think so, no. #time=5:05:56:33

Jessie;I'm sorry about yesterday. #time=5:08:21:06
Jessie;About hurting you Kalil, and for making you uncomfortable Anetta #time=5:08:21:12
Jessie;I need to think before i shitpost #time=5:08:21:16
Kalil;That's something we could all learn to do. #time=5:08:21:20
Anetta;i REFUSE to thnk before shtposting #time=5:08:21:23
Anetta;one dy i am going to die #time=5:08:21:28
Anetta;and thy will pry opn my cold space fngers #time=5:08:21:32
Anetta;(bc its the future) #time=5:08:21:35
Kalil;Of course. #time=5:08:21:38
Anetta;and in my cold cracked airlock scraped fngers #time=5:08:21:42
Anetta;will be a final bad tweet #time=5:08:21:47
Kalil;Why the airlock bit? #time=5:08:21:51
Anetta;only ting tht can kill me is space #time=5:08:21:55
Kalil;Noted. #time=5:08:21:59
Jessie;Well, now I feel better for my shitposting haha #time=5:08:22:02
Anetta;no #time=5:08:22:06
Anetta;you need to thnk before shitposting still #time=5:08:22:11
Hema;yeah #time=5:08:22:14
Hema;until yOU GET ON HER LEVEL #time=5:08:22:17
Jessie;...its a deal #time=5:08:22:21
Jessie;<sprite name="Soft_Smile"> #time=5:08:22:24
Anetta;<sprite name="Smile"> #time=5:08:22:27
Hema;<sprite name="Smile"> <sprite name="Thumbs_Up"> <sprite name="Thumbs_Up"> <sprite name="Explode"> #time=5:08:22:31
Kalil;awwww #time=5:08:22:40
Kalil;how sweet #time=5:08:22:44

Kalil;Has anyone heard from Tanya? #time=5:13:19:14
Jessie;I saw her going to geography again today? #time=5:13:19:20
Kalil;I didn't ask if you saw her. #time=5:13:19:24
Kalil;If I meant 'saw' I would have said it. #time=5:13:19:27
Kalil;Has anyone HEARD from her? #time=5:13:19:31
Kalil;has she texted us at all? #time=5:13:19:35
Jessie;You havent been reading? #time=5:13:19:39
Kalil;For obvious reasons--no #time=5:13:19:42
Hema;last time she texted was last lunch period according to my calculations #time=5:13:19:47
Hema;(i just scrolled backward) #time=5:13:19:51
Kalil;Thanks. #time=5:13:19:55
Kalil;Tanya, if you're reading this - we'd really like to hear from you okay? #time=5:13:19:59
Kalil;Today is going to be a good day. #time=5:13:20:02
Kalil;I hear invitations are going out, and you're sure to be sorted #time=5:13:20:05
Kalil;Everyone likes you! #time=5:13:20:10
Jessie;...What do you mean going out "today?" #time=5:13:20:14
Kalil;um #time=5:13:20:17
Kalil;the invitations #time=5:13:20:20
Kalil;are going out #time=5:13:20:23
Kalil;today #time=5:13:20:27
Kalil;Just that? #time=5:13:20:31
Jessie;You didn't get an invitation already? #time=5:13:20:35
Kalil;One moment #time=5:13:20:38
Kalil;Did you? #time=5:13:20:44
Jessie;Yeah. got mine this morning #time=5:13:20:49
Jessie;Hema did too #time=5:13:20:53
Hema;guilty as charged! #time=5:13:20:57
Kalil;How? #time=5:13:21:01
Jessie;Text from Kyle #time=5:13:21:04
Jessie;he has our numbers apparently? #time=5:13:21:07
Hema;yeah that kind of freaked me out too #time=5:13:21:11
Jessie;i know right #time=5:13:21:15
Kalil;not so much #time=5:13:21:19
Kalil;"HOW did you receive the invitation" #time=5:13:21:24
Kalil;more #time=5:13:21:26
Kalil;"How did YOU receive the invitation" #time=5:13:21:31
Kalil;What gives? #time=5:13:21:34
Jessie;I guess I'm...popular? #time=5:13:21:39
Jessie;some people walked up to me and asked for my number. said it was important #time=5:13:21:43
Jessie;then they asked me for #time=5:13:21:47
Jessie;OHHHHHHHHHHHHHHHHHHHHHHHHH #time=5:13:21:50
Jessie;i am such an idiot #time=5:13:21:52
Kalil;Why? #time=5:13:21:58
Jessie;Hema, I gave them our numbers. #time=5:13:22:01
Jessie;They were asking for Kyle. #time=5:13:22:05
Hema;you just gave someone my number because they said it was important? #time=5:13:22:08
Jessie;when you put it that way it sounds ridiculous #time=5:13:22:12
Hema;you just give people your number?? #time=5:13:22:15
Jessie;WELL YEAH I FIGURED THERE COULDNT BE ANY HARM CRIME DOESNT REALLY HAPPEN HERE #time=5:13:22:19
Hema;CRIME MOST DEFINITELY HAPPENS HERE #time=5:13:22:23
Hema;ITS STILL A MAJOR CITY #time=5:13:22:27
Anetta;if you read the sun it gets wrse #time=5:13:22:31
Hema;yeah dont do that #time=5:13:22:34
Hema;some crime does happen though #time=5:13:22:39
Anetta;a lot of rough sleeping too #time=5:13:22:42
Jessie;that's what yall come homelessness right? #time=5:13:22:46
Anetta;ya #time=5:13:22:50
Jessie;that actually reminds me of something #time=5:13:22:54
Jessie;Grant was telling me about his life a couple days ago #time=5:13:22:59
Hema;Lacrosse team Grant? #time=5:13:23:03
Jessie;yeah #time=5:13:23:06
Jessie;he used to be a rough sleeper #time=5:13:23:11
Hema;LACROSSE TEAM GRANT?! #time=5:13:23:14
Jessie;his family was in a bad place #time=5:13:23:18
Jessie;They ended up on Picadilly high street because it was cold and the taller buildings helped #time=5:13:23:22
Jessie;after a couple days, the police came by and routed them out from the pretty okay place they had found near BAFTA #time=5:13:23:26
Jessie;thing is, there was a few other people rough sleeping just a door down #time=5:13:23:31
Jessie;WAY more disruptive #time=5:13:23:34
Jessie;the police didn't touch them at all #time=5:13:23:38
Jessie;jerked his mom and sister and Grant right back on the street #time=5:13:23:43
Anetta;why? <sprite name="Sad"> #time=5:13:23:47
Jessie;Well, Grant is black #time=5:13:23:52
Jessie;Those guys werent #time=5:13:23:57
Jessie;I'm not saying that was the reason, but Grant had his suspicions and from everything else ive been hearing lately I wouldnt say he was wrong #time=5:13:24:04
Kalil;I'm not sure how to feel about that #time=5:13:24:09
Kalil;There had to be something else there right? #time=5:13:24:13
Anetta;is racism a thng in the UK? #time=5:13:24:17
Anetta;i havnt rlly dealt with it #time=5:13:24:21
Kalil;Nah #time=5:13:24:24
Kalil;That kind of thing happens in the States. #time=5:13:24:27
Hema;well targeting does happen in other ways. #time=5:13:24:31
Hema;we're having a big problem with Windrush right now. #time=5:13:24:34
Kalil;What's Windrush? #time=5:13:24:38
Hema;afrocarribean people who helped the UK rebuild after World War II are getting deported and imprisoned #time=5:13:24:43
Kalil;This isn't a windrush thing though--it's a police thing #time=5:13:24:47
Kalil;It's recent and Grant was born here. #time=5:13:24:51
Kalil;Lots of differences. #time=5:13:24:55
	* * [Things have gotten better too.]
	Player;Things have gotten better since then too #time=5:13:24:59
	Player;I'm sure #time=5:13:25:11
	Player;The UK has always been better when it came to prejudice stuff #time=5:13:25:15
	Player;Like Kalil said--there could have been other factors too #time=5:13:25:18
	Player;valid or not #time=5:13:25:23
	Jessie;...alright. #time=5:13:25:27
	Jessie;That's just what I was told. #time=5:13:25:31
	
	
	* * [His experience still matters.]
	Player;His experience still matters. #time=5:13:24:59
	Player;and if he thinks there was racism or prejudice involved--i believe him. The fact that Windrush is a thing MUST mean there are deeper issues we're still dealing with #time=5:13:25:11
	Player;even if we want to pretend otherwise #time=5:13:25:15
	Player;pretending might even be hurting us #time=5:13:25:18
	Kalil;"us" being british culture? #time=5:13:25:23
	Player;us being...all of us, I guess? The world? idk. #time=5:13:25:27
	Player;All I know is that the stuff is happening and that it needs to change. #time=5:13:25:31
	- -
	Kalil;Annnnd it turns out my instructor has been staring at me for the past few minutes. #time=5:13:25:38
	Kalil;Might be a little late to lunch... #time=5:13:25:43
	Hema;Good luck! #time=5:13:25:47
	Jessie;godspeed you brave soul #time=5:13:25:51
	Anetta;good luck!! #time=5:13:25:54
	
	Hema;...Am I seeing what I think I'm seeing? #time=5:13:39:11
	Jessie;uh #time=5:13:39:15
	Jessie;yeah #time=5:13:39:20
	Jessie;whoa #time=5:13:39:26
	Anetta;lets not make too big a fuss #time=5:13:39:30
	Anetta;congrats Tanya!!! #time=5:13:39:34
	Kalil;Okay I was in dangerous straits for a while there. #time=5:14:02:12
	Kalil;What's the big occasion? #time=5:14:02:18
	Kalil;why the shit is Tanya cuddling Kyle #time=5:14:02:30
	Anetta;she dsnt owe us any answers #time=5:14:02:34
	Anetta;it isnt even a big deal #time=5:14:02:38
	Kalil;um, yes it is #time=5:14:02:41
	Kalil;This is Damien's Kyle #time=5:14:02:30
	Kalil;This is the Kyle we *mocked* #time=5:14:02:35
	Anetta;tanya ddnt mock him #time=5:14:02:39
	Anetta;now we knw why #time=5:14:02:43
	Anetta;hope its going well Tanya!! #time=5:14:02:46
	Anetta;<sprite name="Smile"> #time=5:14:02:48
	Hema;im so sorry we did that Tanya! #time=5:14:02:51
	Hema;if we knew that you were together we would have given him the benefit of the doubt #time=5:14:02:55
	Jessie;Congrats Tanya! #time=5:14:02:58
	Kalil;Am I the only person who sees a problem with this? #time=5:14:03:01
	Kalil;She lied to us. #time=5:14:03:04
	Anetta;whn did that happen? #time=5:14:03:07
	Kalil;Sin of omission. #time=5:14:03:10
	Kalil;She knew the party was Kyle's all along #time=5:14:03:13
	Kalil;Hell, she knew KYLE #time=5:14:03:17
	Kalil;She's watched us run around this entire week, making mistake after mistake #time=5:14:03:20
	Kalil;looking like fools #time=5:14:03:23
	Kalil;so I'm going to repeat my question #time=5:14:03:29
	Kalil;why in the flying bullocks of saint shit did Tanya do this #time=5:14:03:34
	Tanya;Ignoring your language, Kalil--We are Dating. #time=5:14:03:37
	Anetta;speaking of rich pricks... #time=5:14:03:40
	Kalil;Ignoring that Anetta <sprite name=“Roll_Eyes”> #time=5:14:03:44
	Kalil;Why didn't you say something? #time=5:14:03:47
	Tanya;When did the details of My life become Your business? #time=5:14:03:51
	Kalil;When you said we were friends. #time=5:14:03:55
	Kalil;If I knew you were in a relationship I wouldnt have asked you out to the party #time=5:14:03:58
	Tanya;Not returning Your Feelings is not My fault. #time=5:14:04:02
	Anetta;so this IS coming back to your dick #time=5:14:04:05
	Kalil;oh piss off #time=5:14:04:09
	Anetta;youre disappointed that you didnt get what you felt you deserved so you take it out on her #time=5:14:04:13
	Anetta;its WRONG #time=5:14:04:16
	Kalil;I'm hurting Anetta #time=5:14:04:20
	Kalil;I'm hurting all the time #time=5:14:04:24
	Kalil;I wasn't just rejected. I was lied to. #time=5:14:04:27
	Kalil;I exposed myself to every single one of you earlier this week, and I can still feel it burning me inside. #time=5:14:04:31
	Jessie;PHRASING #time=5:14:04:33
	Kalil;wow <sprite name="Roll_Eyes"> #time=5:14:04:37
	Kalil;Tanya, I cannot believe a SINGLE word you say anymore. that hurts. #time=5:14:04:41
	Kalil;I've been thinking about this a lot lately. I think I'll be leaving soon. #time=5:14:04:47
	Kalil;you may call them groupies, and they may be groupies, but the Rebelrousers don't hurt me. Not like you all do #time=5:14:04:50
	Anetta;how do you think Tanya feels? #time=5:14:04:53
	Anetta;even after being told no you can't take it for an answer #time=5:14:04:57
	Anetta;sometimes people jst dont like you #time=5:14:05:00
	Anetta;sometimes you open yourself up for that #time=5:14:05:04
	Kalil;so its okay for *you* to speak for her? #time=5:14:05:08
	Anetta;SOME PEOPLE REALLY LIKE YOU IN SPITE OF YOU BEING THE BIGGEST ASSHLE ALL THE TIME #time=5:14:05:12
	Anetta;REALLY REALLY LIKE YOU, AND YOUR STUPID BAND #time=5:14:05:16
	Anetta;AND YOU DNT EVEN NOTICE #time=5:14:05:20
	Anetta;THT #time=5:14:05:23
	Anetta;HURTS #time=5:14:05:25
	Anetta;TOO #time=5:14:05:27
	Kslil;...what are you saying? #time=5:14:05:32
	Tanya;She's saying that you're Oblivious. #time=5:14:05:35
	Tanya;You are All Oblivious. #time=5:14:05:38
	Tanya;Do you Really want to know about My Life? #time=5:14:05:43
	Kalil;literally the topic of discussion. #time=5:14:05:46
		* * * [Let's put the Conversation Gun down...]
		Player;okay #time=5:14:05:49
		Player;uh #time=5:14:05:53
		Player;Maybe this is something we shouldn't be angry texting about surrounded by chomping noises. #time=5:14:05:56
		Player;something we should cool down for #time=5:14:06:00
		Player;you know #time=5:14:06:03
		Player;so, let's just put the Conversation Gun down... #time=5:14:06:08
		Kalil;I want to hear it. #time=5:14:06:10
		Jessie;I also want to hear--for other reasons than Kalil. But yeah. #time=5:14:06:14
		Tanya;Well alright then. #time=5:14:06:20
		
		
		* * * [I want to know.]
		Player;I want to know. #time=5:14:05:49
		Player;Especially if there's a way we can help? #time=5:14:05:53
		Player;A... #time=5:14:05:56
		Player;A lot has happened this week. #time=5:14:06:00
		Player;We're all in very different, hard places. Broken places. #time=5:14:06:03
		Player;I think we can get better together. Don't you? #time=5:14:06:08
		Kalil;I think it's worth a shot. #time=5:14:06:10
		Jessie;I also want to hear--for other reasons than Kalil. But yeah. #time=5:14:06:14
		Tanya;Well alright then. #time=5:14:06:20
		- - -
		Tanya;Do you know what its like to feel every piece of a chair shatter against your body, individually, when you slam into it? #time=5:14:06:25
		Tanya;Do you know what it's like to mix together flour and salt and water because they're the only edible ingredients in the house,and hope it will stop your siblings from screaming for food that isn't going to come? #time=5:14:06:40
		Hema;oh my god #time=5:14:06:43
		Anetta;i thought you were rich <sprite name="Sad"> #time=5:14:06:46
		Tanya;Do you know what it's like for your parents to scream so loudly at each other that the dishes fall onto the ground and cut your feet? #time=5:14:06:50
		Tanya;Do you know what it's like to hear people say so many things *about* you, but never a word to your face? #time=5:14:06:59
		Tanya;I thought so. #time=5:14:07:09
		Tanya;Kyle does. #time=5:14:07:12
		Jessie;...how did we not know? #time=5:14:07:16
		Tanya;I'm good at applying makeup. #time=5:14:07:19
		Tanya;You don't want to talk about *my* pain. #time=5:14:07:23
		Tanya;You want to see yourselves. #time=5:14:07:26
		Tanya;You want to talk about YOUR pain, through me. #time=5:14:07:31
		Tanya;Kalil--you want a girlfriend. Someone who's going to fix you. #time=5:14:07:34
		Tanya;She can't. #time=5:14:07:38
		Kalil;oh #time=5:14:07:41
		Tanya;Anetta: you want to use me as a shield to express anger at your own rejection. #time=5:14:07:45
		Tanya;Don't you dare make your frustrations with Kalil about me. #time=5:14:07:48
		Tanya;You've got enough pain of your own, Hema. #time=5:14:07:51
		Tanya;Same with you Jessie. #time=5:14:07:55
		Tanya;If anything, you two are better at hiding it than I am. #time=5:14:07:59
		Tanya;And you {PlayerName()}... #time=5:14:08:03
		Tanya;You're trying to do the impossible. #time=5:14:08:09
		Tanya;If you'll Excuse me, I'm going to have a Pleasant Lunch. #time=5:14:08:12
		#time=5:14:08:16
		Tanya;With my Boyfriend. -> day5_evening_group_sequence1
	
=== day5_evening_group_sequence1 ===	

Jessie;Do we have anything to talk about tonight? #time=5:21:04:09
Hema;I don't think so... #time=5:21:04:13
{ bringAnetta:
	Kalil;I concur. #time=5:21:04:17
	Kalil;All that's left is to wait for the awful tomorrow #time=5:21:04:22
	Anetta;i actually got an invitation #time=5:21:04:26
	Anetta;<sprite name="Soft_Smile"> #time=5:21:04:30
	Jessie;wow--congrats Anetta! #time=5:21:04:33
	Hema;you know what this is right? #time=5:21:04:37
	Hema;it's a gift from Tanya #time=5:21:04:40
	Hema;it's a sign. #time=5:21:04:44
	Hema;we're supposed to be together. #time=5:21:04:48
	Hema;all of us. <sprite name="Smile"> #time=5:21:04:52
	Anetta;...i'm srry you wnt be able to cme Kalil #time=5:21:04:57
	Kalil;Don't be #time=5:21:05:01
	Kalil;I hope you have a genuinely fantastic time. #time=5:21:05:05
	Anetta;that means a lot #time=5:21:05:10
	Kalil;i hope so #time=5:21:05:17
- else:
	Kalil;Actually, I've got some news. #time=5:21:04:17
	Kalil;I got an 11th hour invite #time=5:21:04:22
	Kalil;I'm going to the party after all benches!! #time=5:21:04:26
	Jessie;nice one Kalil. <sprite name="Thumbs_Up"> #time=5:21:04:30
	Hema;you know what this is right? #time=5:21:04:33
	Hema;it's a gift from Tanya #time=5:21:04:37
	Hema;it's a sign. #time=5:21:04:40
	Hema;we're supposed to be together. #time=5:21:04:44
	Hema;all of us. <sprite name="Smile"> #time=5:21:04:48
	Kalil;BOOM #time=5:21:04:51
	Kalil;SHAKA #time=5:21:04:53
	Kalil;LAKA #time=5:21:04:55
	Anetta;if i was going to get one i guess it ddnt come then <sprite name="Sad"> #time=5:21:05:00
	Kalil;oh #time=5:21:05:03
	Kalil;I'm sorry Anetta #time=5:21:05:09
	Kalil;We could sneak you in? #time=5:21:05:14
	Anetta;it's okay #time=5:21:05:18
	Anetta;at least people i care about are going #time=5:21:05:22
	Anetta;and I can watch them be happy <sprite name="Smile"> #time=5:21:05:25
	Anetta;it makes me happy too #time=5:21:05:29
	Kalil;That's good then. #time=5:21:05:32
	Kalil;See you all tomorrow! #time=5:21:05:36
	Hema;See you! #time=5:21:05:40
}
-
-> day6_sequence1

=== day6_sequence1 ===

Hema;Good morning one and all! #time=6:09:30:00
Hema;I waited until 9:30 on the dot so no complaints will be accepted #time=6:09:30:03
Hema;also the sun is out. #time=6:09:30:07
Hema;The *Sun* #time=6:09:30:10
Anetta;th sun is not my friend #time=6:09:30:15
Hema;he's everyone's friend! #time=6:09:30:19
Hema;purveyor of vitamin D #time=6:09:30:22
Anetta;remindr that its time to get up #time=6:09:30:26
Anetta;and sometmes that you havnt slept yet but its too late now #time=6:09:30:29
*[I like mornings!]
    Player;I like being up in the morning! #time=6:09:30:34
    Player;It's nice and quiet #time=6:09:30:37
    Hema;yeah! #time=6:09:30:41
*[too... early...]
    Player;too... early... #time=6:09:30:34
    Player;why... conscious? #time=6:09:30:37
    Anetta;*same*... #time=6:09:30:41
-
Hema;I've been *trained* for this #time=6:09:30:45
Hema;I couldn't escape it if I wanted to #time=6:09:30:48
{ bringAnetta:
    Anetta;one day youll be free #time=6:09:30:52
	Hema;i appreciate your optimism <sprite name="Tongue_Out"> #time=6:09:30:56
- else: 
    Kalil;It's not the worst habit to have. #time=6:09:30:52
    Kalil;Speaking of which, I should probably get up. #time=6:09:30:55
    Kalil;Interesting day ahead. #time=6:09:30:59
}

Jessie;Since everyone is awake, let's talk PAR-TAY <sprite name="Party"> #time=6:10:03:36
Jessie;On a scale from 1 to 11 how excited are you? #time=6:10:03:40
Hema;8? #time=6:10:03:46
Jessie;Excited but holding back a little bit #time=6:10:03:50
Jessie;That's certainly a *sensible* place to be <sprite name="Wink"> #time=6:10:03:53
*[11!]
    Player;11! #time=6:10:03:58
    Player;So ready for this #time=6:10:04:01
    Jessie;Getting a lot of excitement from {PlayerName()}! #time=6:10:04:06
    { ahole: 
        Kalil;I thought you weren't interested on Monday? #time=6:10:04:12
        Kalil;Eh. Doesn't matter. #time=6:10:04:15
    - else: 
        Kalil;I'm not surprised. #time=6:10:04:12
        Kalil;{PlayerObjectivePronoun()} wanted to go to the party since Monday. #time=6:10:04:15
    }
*[7?]
    Player;Maybe a 7? #time=6:10:03:58
    Player;Hard to tell #time=6:10:04:01
    Player;I don't think I'm as excited as Hema--though that could also be her absurd levels of morning energy #time=6:10:04:04
    Jessie;Tough crowd! #time=6:10:04:08
    { ahole: 
        Kalil;I'm not surprised. #time=6:10:04:12
        Kalil;You weren't up for it on Monday either. #time=6:10:04:15
    - else: 
        Kalil;Didn't you want to go on Monday? #time=6:10:04:12
        Kalil;Eh, it doesn't matter. #time=6:10:04:15
    }
-
{ bringAnetta: 
    Kalil;Anyway have fun "y'all" #time=6:10:04:21
    Kalil;I'm sure it'll be the pinnacle of entertainment. #time=6:10:04:24
    Hema;I'm sorry you won't be able to come Kalil! We'll miss you. #time=6:10:04:28
    Kalil;There was little to no chance I'd get invited after what happened with Tanya. #time=6:10:04:35
    Kalil;I'm not surprised #time=6:10:04:39
    Hema;sorry #time=6:10:04:42
    Kalil;It's not like i seriously wanted to go either. you can stop apologising #time=6:10:04:46
    Hema;okay #time=6:10:04:50
- else: 
    Kalil;So we all got an invite. #time=6:10:04:21
    Kalil;I didn't think we would, given the whole Kyle situation. Lucky break there. #time=6:10:04:24
    Jessie;I thought we found out Anetta wouldn't have one last night? #time=6:10:04:28
    Anetta;its okay #time=6:10:04:31
    Hema;Oh sweetie! #time=6:10:04:35
    Hema;let me see if Tanya can fix this... #time=6:10:04:38
    Anetta;no no its fine #time=6:10:04:42
    Anetta;really #time=6:10:04:45
    Anetta;<sprite name="Soft_Smile"> #time=6:10:04:48
    Hema;okay--but ONLY if you're sure #time=6:10:04:52
	Anetta;i am <sprite name="Smile"> #time=6:10:04:55
}
Hema;Speaking of Tanya #time=6:10:04:58
Hema;I wonder if she's up yet #time=6:10:05:01
Jessie;She might still need some space #time=6:10:05:05
Anetta;yeah i feel kinda bad abuot it but i dont know how to hlp #time=6:10:05:09
Hema;did we go too far or does she just want a bit of time to herself? #time=6:10:05:13
Hema;does anyone know? #time=6:10:05:17
*[Let's give her space]
    Player;She probably needs some space #time=6:10:05:22
    Player;She's got...a lot going on #time=6:10:05:25
    Hema;yeah that makes sense #time=6:10:05:29
*[No idea]
    Player;I have no idea... #time=6:10:05:22
    Hema;okay yeah #time=6:10:05:25
    Hema;we need to take a note and make sure we talk at the party #time=6:10:05:29
-
Jessie;I just remembered I had an existential question this morning... #time=6:10:05:39
Kalil;Here we go again. #time=6:10:05:43
Jessie;*What am I going to wear today??* #time=6:10:05:47
{ bringAnetta: 
    Kalil;Right, this is a great time to check out of the conversation. #time=6:10:05:51
    Kalil;Peace. #time=6:10:05:54
    Hema;bye Kalil #time=6:10:05:57
- else:
    Anetta;an importnt question #time=6:10:05:51
    Jessie;It is, isn't it? #time=6:10:05:55
}
Hema;i know what I'm wearing but it'll be a secret until we're there! #time=6:10:06:01
Hema;I'll just say #time=6:10:06:05
Jessie;are you killing the suspense already? #time=6:10:06:08
Hema;it's comfortable #time=6:10:06:11
Hema;that's all I was gonna say <sprite name="Tongue_Out"> #time=6:10:06:15
Jessie;Haha. Okay one vote for comfortable. Anyone else? #time=6:10:06:19
*[Super Flashy]
    Player;As flashy as I can get away with. #time=6:10:06:24
    Anetta;you cn get away with anythng #time=6:10:06:29
    Hema;EYYYYYYYYYYYYYYYY #time=6:10:06:33
*[Understated]
    Player;I think I'll grab something understated and discreet. Simple. #time=6:10:06:24
    Jessie;..."discreet"? #time=6:10:06:27
    Jessie;Do you have a part-time espionage thing going on that we don't know about? #time=6:10:06:30
    Player;if i told you, i'd have to kill you #time=6:10:06:34
	Anetta;<sprite name="Skull"> #time=6:10:06:37
-
Anetta;what abt you jessie #time=6:10:06:39
Jessie;I will only reveal once piece of my wardrobe #time=6:10:06:42
Jessie;Drumroll please! #time=6:10:06:45
Anetta;*drumroll* #time=6:10:06:48
Jessie:A choker #time=6:10:06:53
Hema;What? #time=6:10:06:56
{ bringAnetta: 
    Anetta;lol i wanna see that #time=6:10:07:00
- else:
    Anetta;lol i wish i could see that #time=6:10:07:00
}
Hema;Damn. Now I feel bad about my choice #time=6:10:07:04
Jessie;No, the contrast helps me stand out! Let me be fashionable tonight!! #time=6:10:07:08
{ bringAnetta:
    Anetta;ill wear my usual clothes i guess #time=6:10:07:13
    Anetta;i dnt want to thnk about it too much #time=6:10:07:16
    Anetta;the whle thing is strssful #time=6:10:07:19
    Jessie;We'll be there with you <sprite name="Smile"> #time=6:10:07:23
    Hema;Yeah! we're hanging out somewhere different but doing the same stuff as always #time=6:10:07:27
    Kalil;Why bother going to the party if you don't want to Anetta? #time=6:10:07:32
    Jessie;I thought you were checking out of the conversation. #time=6:10:07:36
    Kalil;I just came here to turn off the damn notifications. #time=6:10:07:40
    Kalil;Shouldn't have bothered to engage. #time=6:10:07:43
    Kalil;*OFF* #time=6:10:07:45
    Hema;Kalil... #time=6:10:07:50
    Anetta;i have stff to do anyway. #time=6:10:07:54
    Jessie;Yeah me too #time=6:10:07:58
- else:
    Anetta;what abt you kalil #time=6:10:07:18
    Kalil;Branded everyday clothing for me. #time=6:10:07:22
    Kalil;The Rebelrousers made us a Thin Skunks T-shirt and its actually not bad? #time=6:10:07:26
    Kalil;Good enough to wear to this kind of party. #time=6:10:07:33
    Hema;does it have your face on it? #time=6:10:07:36
    Hema;tell me it has your face on it #time=6:10:07:40
    Kalil;you'll have to wait and see <sprite name="Wink"> #time=6:10:07:43
    Anetta;it sound lke youll have a fun time there #time=6:10:07:48
    Anetta;i have some stff to do so talk later! #time=6:10:07:52
	Anetta;! #time=6:10:07:55
    Jessie;Me too #time=6:10:07:58
    Jessie;Later! #time=6:10:08:02
}


Jessie;First! #time=6:19:03:05
Jessie;Par-Tay Initiated #time=6:19:03:08
Hema;just got here too #time=6:19:03:13
Hema;it's packed already, which is the sign of a good party *but* it makes it hard to find you #time=6:19:03:17
Hema;and your choker because OMG THAT'S A THING?! #time=6:19:03:22
Jessie;hahaha #time=6:19:03:25
{ bringAnetta:
    Anetta;noooo packed already? #time=6:19:03:29
    Anetta;stll a few mins to go #time=6:19:03:32
- else: 
    Kalil;No point in getting there before it's packed! #time=6:19:03:29
    Kalil;I'll be there soon. #time=6:19:03:32
}
Jessie;I'll just do a quick bit of underground recon #time=6:19:03:37
Jessie;Reconaissance #time=6:19:03:41
{ bringAnetta:
    Jessie;Reconnoitering? #time=6:19:03:45
- else: 
    Kalil;Reconnoitering? #time=6:19:03:45
}
Hema;what? #time=6:19:03:48
Jessie;...i'm checking out the basement #time=6:19:03:52
{ bringAnetta:
    Jessie;It's not as packed #time=6:19:03:56
    Jessie;There are board games! #time=6:19:04:00
    Anetta;tht sounds nice #time=6:19:04:04
    Anetta;maybe ill go there first #time=6:19:04:07
    Hema;make sure to swing by the snack table on your way down #time=6:19:04:11
- else: 
    Jessie;okay they have some *old* board games #time=6:19:03:56
    Jessie;Like monopoly and twister, but...first editions? #time=6:19:04:00
    Kalil;Of course <sprite name ="Roll_Eyes"> #time=6:19:04:04
    Kalil;Let's hope they don't get used. #time=6:19:04:07
    Hema;We can hang out at the drink and snack table Kalil #time=6:19:04:11
}
Hema;its right next to the dance floor #time=6:19:04:14
{ bringAnetta:
    Anetta;i refuse to dnce #time=6:19:04:18
    Jessie;Are you sure? #time=6:19:04:22
    Jessie;It could be fun #time=6:19:04:25
    Anetta;n #time=6:19:04:27
    Anetta;e #time=6:19:04:28
    Anetta;v #time=6:19:04:29
    Anetta;e #time=6:19:04:30
    Anetta;r #time=6:19:04:31
    Jessie;Gotcha! #time=6:19:04:37
    Anetta;<sprite name="Tongue_Out"> #time=6:19:04:40
- else: 
    Kalil;Is there a DJ? #time=6:19:04:18
    Hema;I havent seen one but let me check #time=6:19:04:22
    Hema;nope #time=6:19:04:31
    Hema;No DJ#time=6:19:04:34
    Kalil;Figuuuuuuuuuuures #time=6:19:04:37
	Kalil;The Rebelrousers would tear this place apart. #time=6:19:04:40
}
Jessie;This place seems pretty big by London standards #time=6:19:04:47
{ bringAnetta:
    Hema;it's not small #time=6:19:04:51
- else: 
    Kalil;And I thought Damien was the one with money. #time=6:19:04:51
}
Jessie;Hey I wanna play ping pong #time=6:19:04:58
Jessie;You up for it {PlayerName()}? #time=6:19:05:02
*[Nah, snacks and dancing for me.]
    Player;Nah, I'm going for snacking and dancing. In that order. #time=6:19:05:06
    { bringAnetta:
        Hema;Yeah! #time=6:19:05:10
    - else: 
        Kalil;Meet you there #time=6:19:05:10
    }
*[Sounds good!]
    Player;Yeah, that sounds good! See you shortly. #time=6:19:05:06
    { bringAnetta:
        Anetta;ill watch you two play #time=6:19:05:10
        Anetta;i can keep scre #time=6:19:05:13
    - else: 
        Jessie;Grabbing some snacks and meeting you there #time=6:19:05:10
    }
-
Jessie;I have another existential question #time=6:19:05:20
{ bringAnetta:
    Jessie;(a better one this time) #time=6:19:05:23
- else: 
    Kalil;Hopefully a better one this time <sprite name="Wink"> #time=6:19:05:24
}
Jessie;I'm just a few months from being old enough to drink in the UK, but YEARS from it in the US. #time=6:19:05:28
Jessie;Is it somehow *less bad* for me to drink while I'm here? Like is it seen as a more minor offense because I'd be able to soon anyway? #time=6:19:05:33
Hema;Hmmmm tough one #time=6:19:05:40
Hema;especially since some of these drinks are actually nice and not just alcopop sugareyness #time=6:19:05:43
{ bringAnetta:
    Anetta;dont people in the states get fake ids #time=6:19:05:48
- else: 
    Kalil;I thought you american lot got fake IDs anyway #time=6:19:05:48
}
Jessie;Just because some people do it doesn't mean I will #time=6:19:05:52
Jessie;what do y'all think I am?? #time=6:19:05:55
Hema;hahaha #time=6:19:05:58
{ bringAnetta:
    Anetta;sorry <sprite name="Tongue_Out"> #time=6:19:06:02
    Hema;I say go for it! Most kids in the UK start drinking e a r l y anyway regardless of legal age. #time=6:19:06:06
- else: 
    Kalil;You should try it though #time=6:19:06:02
    Hema;I say go for it! Most kids in the UK start drinking e a r l y anyway regardless of legal age. #time=6:19:06:04
}
Jessie;But is it morally correct? #time=6:19:06:08
{ bringAnetta:
    Hema;I dunno about that #time=6:19:06:12
    Hema;but it would be an *actual* crime not to try these. #time=6:19:06:16
    Anetta;whats nice up on the drnk table? #time=6:19:06:21
- else: 
    Kalil;Some of the greatest minds in history have had a fantastic time ignoring that very question. #time=6:19:06:12
    Jessie;I guess that's one way to look at it #time=6:19:06:16
    Kalil;What do you recommend, Hema? #time=6:19:06:21
}
Hema;there's some kind of berry cider #time=6:19:06:25
Hema;something that tastes like melon #time=6:19:06:29
Hema;*lemon* #time=6:19:06:31
Hema;Although melon would be interesting #time=6:19:06:34
Hema;and there's something here that posh people would describe as "smokey" or "woody" but is actually "awful" #time=6:19:06:37
Jessie;That could be whiskey? #time=6:19:06:41
Hema;nah it's not that strong #time=6:19:06:45
Hema;but it could be whiskey mixed with something #time=6:19:06:48
*[Good variety!]
    Player;That's some...surprisingly good variety right there #time=6:19:06:54
    Hema;And that's just hte ones I've tried! #time=6:19:06:58
    Hema;Come have some and we'll comapre notes #time=6:19:07:01
*[You tried all those?]
    Player;You tried all those already? #time=6:19:06:54
    Hema;{PlayerName()}, tonight, I am getting utterly pissed #time=6:19:06:58
    Hema;them selection turning out to not be too bad is a bonus #time=6:19:07:01
-
Hema;If i were to describe the situation i would say... #time=6:19:07:06
Hema;<sprite name="Cocktail"> = <sprite name="Explode"> <sprite name="Thumbs_Up"> #time=6:19:07:10
Hema;right??? #time=6:19:07:16
{ bringAnetta:
    Anetta;ths party = <sprite name="Poo"> #time=6:19:07:20
- else: 
    Kalil;This party = <sprite name ="Roll_Eyes"> #time=6:19:07:20
}
Hema;give it a chance! #time=6:19:07:24
Hema;might surpise you #time=6:19:07:27
{ bringAnetta:
    Jessie;<sprite name="Cocktail"> <sprite name="Thumbs_Up"> #time=6:19:07:32
    Hema;*exactly* #time=6:19:07:35
    Anetta;hmmm #time=6:19:07:39
    Anetta;maybe i can be persuaded #time=6:19:07:42
- else: 
    Jessie;<sprite name="Cocktail"> <sprite name="Skull"> #time=6:19:07:32
    Hema;i thought you were on my side Jessieee #time=6:19:07:35
    Kalil;are the drinks too strong for you? #time=6:19:07:39
    Kalil;loosen up a bit. We just got here! #time=6:19:07:42
}
*[<sprite name="Party_Popper"> <sprite name="Skull">]
    Player;<sprite name="Party_Popper"> <sprite name="Skull"> #time=6:19:07:47
    Hema;but why #time=6:19:07:51
    **[<sprite name="Cocktail"> <sprite name="Sad">]
        Player;<sprite name="Wine"> <sprite name="Sad"> #time=6:19:07:56
        Hema;theyre out of wine? #time=6:19:08:00
        Jessie;The wine was bad? #time=6:19:08:04
    **[<sprite name="Smile"> <sprite name="Sad"> <sprite name="Tongue_Out"> <sprite name="Frown"> <sprite name="Wink">]
        Player;<sprite name="Smile"> <sprite name="Sad"> <sprite name="Tongue_Out"> <sprite name="Frown"> <sprite name="Wink"> #time=6:19:07:56
        Jessie;Too many people? #time=6:19:08:00
        Hema;Too many emotions? #time=6:19:08:04
		{ bringAnetta:
		Anetta;WHAT ARE YOU SAYING #time=6:19:08:07
		- else:
		Kalil;WHAT IS IT LASSIE? IS TIMMY IN THE WELL?! #time=6:19:08:07
		}

    --
*[<sprite name="Party_Popper"> <sprite name="Thumbs_Up">]
    Player;<sprite name="Party_Popper"> <sprite name="Thumbs_Up"> #time=6:19:07:47
    Hema;but *what* is good about it? #time=6:19:07:51
    **[<sprite name="Cocktail"> <sprite name="Cocktail">]
        Player;<sprite name="Cocktail"> <sprite name="Cocktail"> #time=6:19:07:56
        Jessie;That's a lot of excitement over drinks #time=6:19:08:00
        Jessie;Wait, is this your first time drinking {PlayerName()}? #time=6:19:08:04
    **[<sprite name="Smile"> <sprite name="Wink"> <sprite name="Soft_Smile"> <sprite name="Tongue_Out">]
        Player;<sprite name="Smile"> <sprite name="Wink"> <sprite name="Soft_Smile"> <sprite name="Tongue_Out"> #time=6:19:07:56
        Hema;You like the crowd? Too many emotions? #time=6:19:08:00
        Jessie;Oh oh do you like someone here? #time=6:19:08:04
        { bringAnetta:
		Anetta;WHAT ARE YOU SAYING #time=6:19:08:07
		- else:
		Kalil;WHAT IS IT LASSIE? IS TIMMY IN THE WELL?! #time=6:19:08:07
		}
    --
-
Player;*i will never tell* #time=6:19:08:10
Jessie;aaagh! #time=6:19:08:14
Hema;I would describe the situation with <sprite name="Smile"> <sprite name="Cocktail"> <sprite name="Sad"> <sprite name="Skull"> <sprite name="Smile"> <sprite name="Smile"> #time=6:19:08:20
{ bringAnetta:
    Anetta;the drinks are good bt not the wine #time=6:19:08:25
- else: 
    Kalil;You like most of the drinks, but not the wine? #time=6:19:08:25
}
Jessie;I get the feeling there's more to this than that #time=6:19:08:29
Hema;Its a secret!! #time=6:19:08:33
Hema;haha nah i just need more emojis #time=6:19:08:37

{ bringAnetta:
    Anetta;i havnt seen tanya yet. anyne else spot her? #time=6:19:42:22
    Jessie;No sign of Kyle either #time=6:19:42:26
- else: 
    Kalil;No Tanya so far, unless she's in one of the locked bedrooms with Kyle #time=6:19:42:22
    Jessie;<sprite name ="Roll_Eyes"> Cut it out Kalil  #time=6:19:42:26
}
Hema;its kyle's party so I'm sure shes having fun! #time=6:19:42:30
Hema;We are too #time=6:19:42:33
{ bringAnetta:
    Hema;Anetta and jessie are throwin paper airplanes at the dart baord for some reason? #time=6:19:42:38
    Jessie;Kyle had the foresight to hide all the darts so we improvised #time=6:19:42:42
    Jessie;surprisingly, it hasn't reduced the number of injuries #time=6:19:42:45
- else: 
    Hema;Kalil just stepped on the dance floor for the first time #time=6:19:42:38
    Hema;he probably heard a song he liked #time=6:19:42:41
    Hema;it sounds like his kind of song #time=6:19:42:44
    Hema;Jessie is playing games with some friends I didn't know he had. I guess he really is popular #time=6:19:42:47
}
Hema;{PlayerName()} is being cool as always #time=6:19:42:50
*[Hema is narrating...]
    Player;Hema is narrating all of our individual experiences... #time=6:19:42:55
*[Hema is watching over us]
    Player;Hema is kindly watching over all of us, a benevolent deity among the disco lights #time=6:19:42:55
-
Hema;Yup! Hema! thats me! #time=6:19:42:59
Hema;you know, i actually like this song too. Maybe itll be cool to get a video so we can remember thi #time=6:19:43:10
Hema;um #time=6:19:43:19
Hema;i forget how to do it on the other camera #time=6:19:43:22
Hema;never mind its selfie time instead #time=6:19:43:27
Hema;<SelfieDay3> #time=6:19:43:36
Hema;this is it, the heart of hte party!!! #time=6:19:43:40
Hema;Everyone having fun! #time=6:19:43:43
{ bringAnetta:
    Anetta;its kind of hard to tell if there having fun #time=6:19:43:47
    Anetta;the faces r too small in the phto #time=6:19:43:50
    Anetta;mayb theyre secretly worried #time=6:19:43:53
    Jessie;I just came upstairs to grab a drink and they look pretty happy to me #time=6:19:43:59
    Jessie;it's hard to tell with y'all though sometimes #time=6:19:44:03
- else: 
    Kalil;Good photo, really captures the chaos #time=6:19:43:47
    Jessie;Wait are you done dancing already? #time=6:19:43:51
    Jessie;I didn't get to see your moves #time=6:19:43:54
    Kalil;Now that the DJ's here and we finally have some decent music, I'll probably jump back in later. #time=6:19:43:47
    Kalil;The party's actually picking up, thank God. #time=6:19:43:51
}
Hema;I'll be sure to take more photos later #time=6:19:44:07
Hema;what d oyou think {PlayerName()} #time=6:19:44:11
Hema;has the party lived up to your expectations so far #time=6:19:44:14 
*[Yeah!]
    Player;Yeah, it has! #time=6:19:44:19
    Player;let's hope the good times last all night #time=6:19:44:22
    Anetta;tht seems like such a long time away #time=6:19:44:30
*[Not really]
    Player;No, not really #time=6:19:44:19
    Player;There's still time though #time=6:19:44:22
    Anetta;ther really is a lot of time, isn't there #time=6:19:44:30
-
{ bringAnetta:
->AnettaParty
- else: 
->AnettaLibrary
}

==AnettaParty==
Anetta;wow how is it only 7.44 #time=6:19:44:34
Anetta;its so loud #time=6:19:44:37
Anetta;last time i checkd it was 7.40 #time=6:19:44:40
Anetta;i can't tell if thngs are going in slw motion or im going in fast forwrd #time=6:19:44:44
Anetta;im gonan play some music that sometimes helps #time=6:19:44:50
Anetta;whn theres so many ppl #time=6:19:44:53
Anetta;i didnt bring my musc player #time=6:19:45:00
Anetta;i didnt bring my music playr with all the right songs on it and now i cant tune peopl out #time=6:19:45:03
Anetta;i put on my earphons but it doesn't stop the noise #time=6:19:45:07
Anetta;i want to get up from the chair but #time=6:19:45:10
Anetta;theres too many peoepl and i cant #time=6:19:45:13
*[Are you okay?]
    Player;Are you okay Anetta? #time=6:19:45:18
    Anetta;i dont know i cant thnk #time=6:19:45:21
*[This doesn't sound good]
    Player;This doesn't sound good Anetta #time=6:19:45:18
    Anetta;i dont think it is bt i dont know i cant think #time=6:19:45:21
-
Anetta;im surrounded by people laughng adn drinking and shoutng #time=6:19:45:24
Anetta;my brain isnt working i dont knw how to get out #time=6:19:45:27
Anetta;or get thm to move #time=6:19:45:30
Jessie;Anetta? Is this a panic attack? #time=6:19:45:34
Anetta;dunno cant think mayeb #time=6:19:45:38
Jessie;breathe! #time=6:19:45:41
Jessie;i'll be down in a sec #time=6:19:45:45

Jessie;I think it's okay now #time=6:19:47:18
Jessie;Anetta says you're supposed to stay where you are and let the panic pass #time=6:19:47:23
Jessie;I think it mostly has but we're gonna hang out here for a bit #time=6:19:47:27
*[Should I bring snacks?]
    Player;Should I bring snacks? #time=6:19:47:32
    Jessie;yes #time=6:19:47:35
    Jessie;BBQ and cheese chips #time=6:19:47:40
    Jessie;CRISPS! #time=6:19:47:43
    Jessie;I corrected myself so it doesn't count #time=6:19:47:46
*[Thanks, Jessie]
    Player;Thanks, Jessie #time=6:19:47:32
    Jessie;No problem <sprite name="Soft_Smile"> #time=6:19:47:36
-
Hema;Anetta! #time=6:19:48:28
Hema;i'm so sorry!!! #time=6:19:48:33
Hema;I was talking to someone and didnt see #time=6:19:48:36
Hema;Ill be there in a sec #time=6:19:48:40
->BackToParty

==AnettaLibrary==
Anetta;there is jst #time=6:19:44:30
Anetta;so muhc time in a day #time=6:19:44:33
Anetta;so much and space thats hard to fill #time=6:19:44:36
Anetta;it doesnt feel that way but whn you actually have to try its kind of hrd to fnd things to do #time=6:19:44:40
Jessie;Are you okay? #time=6:19:44:45
Jessie;Are we talking too much about the party? #time=6:19:44:48
Anetta;no its not that #time=6:19:44:52
Anetta;i decided to go to the hgh street to browse sme things #time=6:19:44:55
Jessie;The one near school? #time=6:19:44:59
Anetta;yeah #time=6:19:45:02
Anetta;but i stayd out later than i meant to #time=6:19:45:05
Anetta;lost track of time so im sitting in the library cause its the only place thats open at ths hour that isnt food or cinema #time=6:19:45:09
Anetta;im sittng in a corner but cant seem to read #time=6:19:45:14
Jessie;Nothing good to read? #time=6:19:45:18
Anetta;i cnt focus #time=6:19:45:22
Anetta;the words and sentences almost make sense #time=6:19:45:25
Anetta;but then its the nxt page and i have no idea wht i read #time=6:19:45:28
*[I know the feeling]
    Player;I know the feeling #time=6:19:45:33
    Anetta;yeah its not that bad or anythng #time=6:19:45:37
    Anetta;i jst want to leave but for some reason i cant #time=6:19:45:41
*[Time for a break?]
    Player;Maybe it's time for a break? #time=6:19:45:33
    Anetta;yeah i was thinkng that #time=6:19:45:37
    Anetta;i wnt to leave #time=6:19:45:40
    Anetta;but i cant #time=6:19:45:43
-
Anetta;my legs arent listning to me #time=6:19:45:46
Anetta;is it weird to say tht i cant imagine actually getting up #time=6:19:45:50
Anetta;like whn a fire alarm goes for so long tht you cant imagine it stopping bcause the rhythm is just carved nto your skull #time=6:19:45:54
Jessie;Is there anything you can do? #time=6:19:46:00
Anetta;music somtimes helps #time=6:19:46:04
Anetta;i didnt bring it #time=6:19:46:11
Anetta;i forgot to bring it i just brought my phone and keys #time=6:19:46:14
Anetta;how could i forget #time=6:19:46:17
Anetta;i cnt focus #time=6:19:46:20
Kalil;This has happened to you before, right? #time=6:19:46:24
Jessie;Why even show up if you're going to be fake? #time=6:19:46:28
Kalil;I'm trying to *help* you little shit! #time=6:19:46:31
*[Is this a panic attack?]
    Player;Is this a panic attack? #time=6:19:46:36
*[What can we do?]
    Player;What can we do to help? #time=6:19:46:36
-
Kalil;Anetta? #time=6:19:46:43
Jessie;Hold on. I'm coming! #time=6:19:46:46
Jessie;Had enough of this party anyway #time=6:19:46:49
Jessie;And Kyle's place shouldn't be far from the library. #time=6:19:46:52
Kalil;okay #time=6:19:46:56
Kalil;Yeah #time=6:19:47:00
Kalil;Good idea. #time=6:19:47:03
Hema;im so sorry i didnt see this earlier anetta!! #time=6:19:48:28
Hema;jessie are you there? #time=6:19:48:32
Hema;is she okay??? #time=6:19:48:38
Hema;should i call her parents #time=6:19:48:43
Jessie;hold on almost there #time=6:19:48:47
Jessie;It's fine now I think #time=6:19:50:15
Hema;im so glad! #time=6:19:50:18
Jessie;We'll sit here for a bit #time=6:19:50:22
Jessie;Then I think I'll walk her home #time=6:19:50:25
*[thanks Jessie]
    Player;thanks Jessie #time=6:19:50:31
    Jessie;No brainer #time=6:19:50:35
    Jessie;Y'all enjoy the rest of the party #time=6:19:50:39
*[you're not coming back?]
    Player;you're not coming back to the party? #time=6:19:50:31
    Jessie;Nah, it's probably best for me to go home afterwards #time=6:19:50:35
    Jessie;Wasn't super into the party anyway #time=6:19:50:39
    Jessie;y'all have fun! #time=6:19:50:42
-
->BackToParty

==BackToParty==
{ bringAnetta:
    Hema;so Anetta and jessie are hidign out in the quietest corner #time=6:21:06:02
    Anetta;not that quiet  #time=6:21:06:06
    Hema;{PlayerName()} is either better att making firends than i expected or jst happens to know laods more people than i do #time=6:21:06:10
    Hema;kalil didnt even get toc ome #time=6:21:06:15
- else: 
    Hema;so kalil has a group of peopel around him again #time=6:21:06:02
    Kalil;Is it surprising that I have friends? #time=6:21:06:06
    Hema;{PlayerName()} seems to know laods more people than i would have guessed #time=6:21:06:10
    Hema;jessie left #time=6:21:06:14
    Hema;Anetta didnt get to come in the first place #time=6:21:06:17
}
Hema;who knows where Tanya is #time=6:21:06:21
Hema;my dirnk taste test is still inconclusvie  #time=6:21:06:25
*[Are you okay?]
    Player;Are you okay, Hema? #time=6:21:06:30
    Hema;Yeah! #time=6:21:06:33
*[How much did you drink?]
    Player;How much did you drink again? #time=6:21:06:30
    Hema;th Good Amount #time=6:21:06:33
-
Hema;i just thouhgt hte party would be good for s to hang out #time=6:21:06:41
Hema;have fun and reconect and everythng! #time=6:21:06:44
Hema;but we'er not #time=6:21:06:47
Hema;ive just made a mess of it #time=6:21:06:50
{ bringAnetta:
    Anetta;thats not true #time=6:21:06:54
- else: 
    Kalil;I think there are a lot of reasons things didn't work out that don't involve you, Hema. #time=6:21:06:54
}
Hema;but i tried keepnig things the way they were #time=6:21:06:59
Hema;and now ive made itall worse #time=6:21:07:02
Hema;i couldnt even haev imagined this a week ago #time=6:21:06:05
Hema;five days??? whao #time=6:21:06:08
*[It's not your fault]
    { bringAnetta:
        Player;Like Anetta said, it's not your fault. #time=6:21:06:13
    - else: 
        Player;It's not your fault, Hema. #time=6:21:06:13
    }
    Hema;but it is! #time=6:21:06:17
*[It's complicated]
    { bringAnetta:
        Player;It's more complicated than that, Hema. #time=6:21:06:13
    - else: 
        Player;Like Kalil said, there's a lot going on. #time=6:21:06:13
    }
    Hema;how does that help? #time=6:21:06:17
-
Hema;half an hour ago my friend wa having a panic attack and i did nteven notice! #time=6:21:06:21
Jessie;It's hard to hear the message noise when the music is this loud #time=6:21:06:25
Jessie;Besides, things are fine now #time=6:21:06:28
Hema;are theyy?? #time=6:21:06:31
*[Where are you?]
    Player;Where are you Hema #time=6:21:06:36
    Player;I can't find you #time=6:21:06:39
*[Tell me where you are]
    Player;Tell me where you are, Hema #time=6:21:06:36
    Player;I can't find you #time=6:21:06:39
-
Hema;bathroom upstaisr #time=6:21:06:46

{ bringAnetta:
    Jessie;Well #time=6:22:02:01
    Jessie;that's one more thing I can't unsee #time=6:22:02:04
    Jessie;What a party eh? #time=6:22:02:09
    Jessie;People still having a good time? #time=6:22:02:13
    Hema;yeah but not for long #time=6:22:02:17
    Hema;{PlayerName()} and i are leaving #time=6:22:02:20
    Anetta;r u two ok? #time=6:22:02:24
    Hema;yeah im just leaaavign #time=6:22:02:28
    Hema;later!!! #time=6:22:02:31
    Jessie;Chat later! #time=6:22:02:35
    Anetta;bye <sprite name="Grimace"> #time=6:22:02:39
- else: 
    Kalil;That was such a good song #time=6:22:02:01
    Kalil;I think the night has peaked #time=6:22:02:04
    Kalil;Did no one else hear it? #time=6:22:02:09
    Hema;nope just getting my coat andstuff now #time=6:22:02:13
    Kalil;You're leaving? #time=6:22:02:17
    Hema;yeah {PlayerName()} and i are #time=6:22:02:21
    Kalil;everything okay? #time=6:22:02:25
    Hema;yeah im just leaaavign #time=6:22:02:29
    Hema;later!!! #time=6:22:02:32
    Kalil;See you both later. #time=6:22:02:36
}

{ bringAnetta:
    Jessie;I think I've officially run out of interesting things to do #time=6:23:12:43
    Anetta;and ppl are makng less and less snse #time=6:23:12:47
    Jessie;Might head out soon. #time=6:23:12:51
- else: 
    Kalil;Things are finally winding down. #time=6:23:12:43
    Kalil;Interesting people are leaving, so as a Fellow Interesting Person, I think I'll pop off as well. #time=6:23:12:47
    Jessie;Was quite a party! #time=6:23:12:51
    Kalil;Yeah. #time=6:23:12:54
}
Jessie;Well, time for me to sign off. maybe find a way to get some sleep too #time=6:23:12:57
Jessie;'night folks! #time=6:23:13:00
Jessie;<sprite name="Cocktail"> <sprite name="Thumbs_Up"> #time=6:23:13:02
{ bringAnetta:
    Anetta;<sprite name="Party"> <sprite name="Explode"> #time=6:23:13:05
- else: 
    Kalil;<sprite name="Skull"> <sprite name="Tongue_Out"> #time=6:23:13:05
}
*[<sprite name="Party"> <sprite name="Soft_Smile">]
    Player;<sprite name="Party"> <sprite name="Soft_Smile"> #time=6:23:13:10
*[<sprite name="Skull"> <sprite name="Frown">]
    Player;<sprite name="Skull"> <sprite name="Frown"> #time=6:23:13:10
-

Hema;SHIT #time=7:10:11:15
Hema;SHIT SHIT SHIT #time=7:10:11:20
Hema;HOW MUCH DID I DRINK LAST NIGHT #time=7:10:11:24
Kalil;a fun amount, clearly #time=7:10:11:28
Hema;NOT THE TIME #time=7:10:11:31
Hema;Did anyone see Tanya last night? It's really really important #time=7:10:11:36
{ bringAnetta:
    Kalil;I wasn't invited, so no. #time=7:10:11:40
	Anetta;cn there be one fucking day that isnt about you #time=7:10:11:43
	Kalil;those are bold words considering Hema is clearly distressed and you're trying to start a fight instead of answering her question #time=7:10:11:47
	Anetta;shut up #time=7:10:11:51
	Kalil;If I'm selfish, you're JUST as selfish as me #time=7:10:11:55
	Anetta;SHUT UP #time=7:10:11:58
	Kalil;No matter what you say or how many depressed ellipses you text, you want the spotlight just as much as I do #time=7:10:12:02
	Kalil;Why else are you working on some sci-fi epic? #time=7:10:12:06
	Anetta;BECUASE IT MAKES ME HAPPY YOU JACKASS #time=7:10:12:10
	Jessie;You know I thought you were a real asshole before, but this really confirms it #time=7:10:12:14
	Kalil;Get out of here #time=7:10:12:18
	Jessie;Don't push me. #time=7:10:12:22
	Kalil;Oh you're going to do something about it? #time=7:10:12:27
	Kalil;I would soooooooo love to see you try #time=7:10:12:31
	Jessie;You really mean that Tory? #time=7:10:12:35
	Kalil;Ha! You don't even know what that word means. #time=7:10:12:39
	Kalil;You're parroting. #time=7:10:12:42
	Kalil;You know she won't sleep with you just because you stick up for her in a couple text chats right? #time=7:10:12:46
	Jessie;You as brave without a screen and your groupies? #time=7:10:12:50
	Anetta;this isn't about me #time=7:10:12:54
	Anetta;its about you two measuring your cocks #time=7:10:13:00
	Anetta;again #time=7:10:13:03
	Jessie;I didn't mean for that #time=7:10:13:07
	Anetta;you nver do right #time=7:10:13:11
	Kalil;After I'm finished here, I'm going to dick right off back to my "groupies." #time=7:10:13:15
	Kalil;It'll be nice to have some real friends for once. #time=7:10:13:19
	Jessie;Oh my GOD that is rich #time=7:10:13:22
	Jessie;Do you know how much we put up with to keep you around? A TON #time=7:10:13:25
	Anetta;youre BOTH assholes #time=7:10:13:27
	Anetta;there #time=7:10:13:28
	Anetta;hppy!? #time=7:10:13:30
- else:
	Anetta;i wasnt invited <sprite name="Frown"> #time=7:10:11:40
	Anetta;srry #time=7:10:11:43
	Kalil;my god are you going to be like this all the time #time=7:10:11:47
	Anetta;wht do you mean? #time=7:10:11:50
	Kalil;<sprite name="Frown"> #time=7:10:11:55
	Kalil;that #time=7:10:11:59
	Kalil;Other people are dealing with stuff too you know #time=7:10:12:03
	Anetta;you knw what #time=7:10:12:07
	Anetta;I had a really bad night #time=7:10:12:11
	Anetta;Jessie had to leave the prty and be with me #time=7:10:12:14
	Anetta;i really dont wnt to hear shit frm you #time=7:10:12:18
	Kalil;so #time=7:10:12:22
	Kalil;youre saying you had a terrible time with Jessie last night then #time=7:10:12:25
	Anetta;tht isnt wht i meant #time=7:10:12:28
	Jessie;You can't let it rest can you? #time=7:10:12:31
	Jessie;You know I thought you were a real asshole before Kalil, but this really confirms it #time=7:10:12:35
	Kalil;She won't sleep with you just because you stick up for her in a couple text chats #time=7:10:12:38
	Jessie;And Tanya won't sleep with you at all #time=7:10:12:42
	Jessie;guess we're even #time=7:10:12:46
	Kalil;You wouldn't dare saying something like that to my face. #time=7:10:12:49
	Jessie;Try me. I'm willing to bet you arent so brave when you dont have your screen and groupies. #time=7:10:12:53
	Anetta;this isn't about me #time=7:10:12:56
	Anetta;its about you two measuring your cocks #time=7:10:13:00
	Anetta;again #time=7:10:13:02
	Jessie;I didn't mean for that #time=7:10:13:05
	Anetta;you nver do right #time=7:10:13:08
	Kalil;After I'm finished here, I'm going to dick right off back to my "groupies." #time=7:10:13:11
	Kalil;It'll be nice to have some real friends for once. #time=7:10:13:14
	Jessie;Oh my GOD that is rich #time=7:10:13:17
	Jessie;Do you know how much we put up with to keep you around? A SHITTON #time=7:10:13:20
	Anetta;youre BOTH assholes #time=7:10:13:23
	Anetta;there #time=7:10:13:26
	Anetta;hppy!? #time=7:10:13:30
}
* [Stop, Anetta!]
Player;Stop, Anetta! #time=7:10:13:34
Player;There's bigger things happening right now #time=7:10:13:37
Anetta;easy fr you to say #time=7:10:13:41
{ bringAnetta:
	Anetta;you havent been dealing wth ths all week #time=7:10:13:45
- else:
	Anetta;you didnt get left behind ysterday #time=7:10:13:45
}
Player;I thought you said things were okay? #time=7:10:13:48
Anetta;THATS WHT PEOPLE SAY WHEN THEY ARENT OKAY #time=7:10:13:52
Kalil;Yeah thats pretty much friendship 101 #time=7:10:13:55
Jessie;You switch sides FAST #time=7:10:13:58
Kalil;Didn't switch anything. #time=7:10:14:02
Kalil;Just acknowledging the fact that {PlayerName()} has been a bit of an asshole this week too #time=7:10:14:06
Jessie;How could you say that? #time=7:10:14:09
Kalil;Am I wrong, or do they get free passes for stuff we'd get raked over the coals for? #time=7:10:14:12
Jessie;I thought you didn't want a free pass anymore, considering your parents and all #time=7:10:14:16
Kalil;I dont. I wanted friends #time=7:10:14:22


* [Stop, Kalil!]
Player;Stop, Kalil! #time=7:10:13:34
Player;There's bigger things happening right now #time=7:10:13:37
Kalil;Easy for you to say! #time=7:10:13:41
{ bringAnetta:
	Kalil;You didn't get fucking DUMPED by your best friends yesterday #time=7:10:13:45
- else:
	Kalil;You don't get treated like a fucking pariah all the time #time=7:10:13:45
}
Player;Excuse me? #time=7:10:13:48
Kalil;I'm always the bad guy! #time=7:10:13:52
Kalil;They love you no matter what you do or who you hurt #time=7:10:13:55
Player;I hurt people? #time=7:10:13:58
Anetta;smetimes #time=7:10:14:02
Kalil;The mute speaks! #time=7:10:14:06
Kalil;Unlike you, I don't get free passes #time=7:10:14:09
Jessie;I thought you didn't want a free pass anymore, considering your parents and all #time=7:10:14:12
Kalil;I dont. #time=7:10:14:16
Kalil;I wanted friends #time=7:10:14:22
-
Hema;SHUT UP #time=7:10:14:24
Hema;ALL OF YOU #time=7:10:14:28
Jessie;One quick thing: #time=7:10:14:32
Hema;YOU MAY NOT #time=7:10:14:35
Hema;I got a text from Madison this morning #time=7:10:14:38
Hema;even though the party was held at Kyle's house, no one has heard from or seen Kyle and Tanya since Friday #time=7:10:14:43
Anetta;at all? #time=7:10:14:46
Hema;No. #time=7:10:14:49
Kalil;Who opened the door to the party? #time=7:10:14:52
Hema;Housekeeper. Was also the chaperone. #time=7:10:14:56
Jessie;Was that the old lady looking uncomfortable sitting next to all of the expensive paintings? #time=7:10:15:00
Hema;CAN WE NOT GO OFF TRACK? #time=7:10:15:03
Hema;JUST ONCE? #time=7:10:15:05
Anetta;sorry... #time=7:10:15:08
Hema;...No. Im sorry. #time=7:10:15:11
Hema;I just don't know what to do. #time=7:10:15:14
Hema;I'm scared. #time=7:10:15:17
Hema;we're saying some very nasty things to each other and wasting valuable energy when our friend could be in bad circumstances #time=7:10:15:20
Hema;{PlayerName()}, did you talk to Tanya in any way, shape, or form yesterday? #time=7:10:15:25
	* * [...No. No I didn't.]
	Player;...No, actually. #time=7:10:15:29
	Player;no I didnt. #time=7:10:15:32
	Player;No one saw or heard ANYTHING? #time=7:10:15:35


	* * [Is this unusual?]
	Player;Is this unusual? #time=7:10:15:29
	Player;She started detaching a while ago. Maybe she's just doing her own thing for a little? #time=7:10:15:32
	Player;No one saw or heard ANYTHING? #time=7:10:15:35
	- -
	Hema;that's why theyre starting to panic. #time=7:10:15:40
	Hema;its been over 24 hours and no one even noticed until this morning #time=7:10:15:43
	Hema;god i am such a bad friend #time=7:10:15:47
	Hema;how much did i drink <sprite name="Grimace"> #time=7:10:15:52
	Kalil;We'll find her. #time=7:10:15:55
	Jessie;There isn't a 'we'. #time=7:10:15:58
	Jessie;You just said as much. #time=7:10:16:02
	Kalil;...This is finished when we know she's okay #time=7:10:16:06
	Kalil;Then we're done. #time=7:10:16:10
	Kalil;Really done. #time=7:10:16:13
	Kalil;I'm out of here. #time=7:10:16:16
	Kalil;Had it with you lot #time=7:10:16:19
	Jessie;<sprite name ="Roll_Eyes"> #time=7:10:16:22
	Jessie;DID Y'ALL JUST GET THAT MESSAGE. #time=7:10:16:30
	Kalil;YES #time=7:10:16:33
	Anetta;OMG #time=7:10:16:36
	Anetta;OMGGGGGGGGGGGGG #time=7:10:16:39
	Hema;DONT PANIC #time=7:10:16:42
	Hema;I DIDN'T GET ANY MESSAGE #time=7:10:16:45
	Hema;1 sec #time=7:10:16:47
	Kalil;how much do you want to bet she just got the message #time=7:10:16:52
	Hema;I JUST GOT THE MESSAGE #time=7:10:16:59
	Hema;OH GOD #time=7:10:17:02
	Jessie;I KNOW???? #time=7:10:17:05
	Jessie;WHAT DO WE DO #time=7:10:17:08
	Jessie;WHAT DOES IT MEAN #time=7:10:17:11
	Hema;I DONT KNOW #time=7:10:17:14
	Anetta;oh no oh no oh no #time=7:10:17:17
	Anetta;not tanya #time=7:10:17:20
	Anetta;wht if its our fault #time=7:10:17:24
	Kalil;the message literally said it isnt our fault #time=7:10:17:28
	Anetta;do you believe it? #time=7:10:17:31
	Kalil;NO #time=7:10:17:34
	Kalil;NOT REALLY #time=7:10:17:36
	Kalil;WHAT THE HELL #time=7:10:17:39
	Jessie;I DONT KNOW #time=7:10:17:42
	Anetta;oh my gooooooooooood #time=7:10:17:45
	Hema;I'M LOOKING UP THE NUMBER FOR THE HOSPITAL #time=7:10:17:48
	Anetta;whY WOULD SHE NEED THE HOSPITAL #time=7:10:17:51
	Hema;I DONT KNOW IM JUST MAKING SURE #time=7:10:17:54
	Jessie;AHHHHHHHHHHHHHHHHHHH??!?! #time=7:10:17:57
	Kalil;YOURE FREAKING ME OUT HEMA #time=7:10:18:00
	Kalil;WE SERIOUSLY DONT KNOW ANYTHING?! #time=7:10:18:03
	Jessie;PRETTY MUCH??? #time=7:10:18:06
		* * * [THIS IS REALLY BAD]
		Player;THIS IS REALLY BAD #time=7:10:18:10
		Jessie;A LITTLE BIT YEAH #time=7:10:18:14

	
		* * * [AUUUUGHHHH??!?!]
		Player;AUUUUGHHHH??!?! #time=7:10:18:10
		Jessie;THAT SUMS IT UP PRETTY WELL, THANKS #time=7:10:18:14
		- - -
		Hema;oh god #time=7:10:18:18
		Hema;guys #time=7:10:18:21
		Hema;What if... #time=7:10:18:25
		Hema;What if Tanya's really gone? #time=7:10:18:34

-> END