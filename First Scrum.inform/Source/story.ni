
"First Scrum" by Antti Kirjavainen

[This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
http://creativecommons.org/licenses/by-nc-sa/3.0/]

[The story title is "First Scrum".]
[The story author is "Antti Kirjavainen".]
The story genre is "Drama".
The release number is 1.
The story creation year is 2011.
The story description is "This is a work-in-progress. 

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License (http://creativecommons.org/licenses/by-nc-sa/3.0/)."

When play begins: say "This is a work-in-progress, an early proposal of a future game-to-be. Please treat it as such.

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.

Please visit [Link for Gamepagelink] for more information about the game."

After printing the banner text: say "[backstory][tutorial for Tutorial-Intro][tutorial for General info][tutorial for Tutorial-Outro][paragraph break]".
 
Include Conversation Rules by Eric Eve.

Include Basic Screen Effects by Emily Short.

Use no scoring.

Use BRIEF room descriptions.


Book 1 Generic Stuff

Volume 1 Web Links

A weblink is a kind of thing. 
A weblink has some text called link_url. 
The link_url of a weblink is usually "". 
The description of a weblink is usually "".

To say Link for (W - a weblink):
	let URL be the link_url of W; 
	if URL is not "": 
		say "JQ:LINK:[URL]:[description of W]:"; 

Gamepagelink is a weblink. The link_url of Gamepagelink is "learninggamedev.wordpress.com/first-scrum/". The description of Gamepagelink is "The web page of First Scrum".

CC_link is a weblink. The link_url of CC_link is "creativecommons.org/licenses/by-nc-sa/3.0/". The description of CC_link is "Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License".

[for debugging the web link hack for parchment]
[SA_link is a weblink. The link_url of SA_link is "www.scrumalliance.org/". The description of SA_link is "Scrum Alliance".

The large note is in the By the door. 

Instead of examining the large note:
	say "Link [Link for SA_link]";
	

[pictures] 
A picture is a kind of thing. 
A picture has some text called image_name. 
The image_name of a picture is usually "". 

Instead of examining a picture: 
	let IMG be the image_name of the noun; 
	if IMG is not "": 
		say "JQ:IMAGE:[IMG]:"; 
	say "[the description of the noun][line break]"; 

The Mona Lisa is a picture. Mona Lisa is in the room called By the door. 
The image_name of the Mona Lisa is "monalisa.jpg". ]
[end for debugging the web link hack for parchment]


Volume 2 Bug Fix

Report quizzing someone about something known (this is the bugfix quizzing report rule):
	repeat through the quizzing table of the noun:
		if the subject entry is the second noun:
			if there is a suggest entry and the suggest entry is -1, continue the action;
			if there is a response rule entry, consider the response rule entry;
			if there is a response table entry, show the next response from the response table entry;
			if there is a suggest entry and the suggest entry > 0:
				let sug be the suggest entry;
				decrease sug by 1;
				now the suggest entry is sug;
			stop the action.

The bugfix quizzing report rule is listed instead of the standard
quizzing report rule in the report quizzing it about rulebook.

Report informing someone about something known (this is the bugfix informing report rule):
	repeat through the informing table of the noun:
		if the subject entry is the second noun:
			if there is a suggest entry and the suggest entry is -1, continue the action;
			if there is a response rule entry, consider the response rule entry;
			if there is a response table entry, show the next response from the response table entry;
			if there is a suggest entry and the suggest entry > 0:
				let sug be the suggest entry;
				decrease sug by 1;
				now the suggest entry is sug;
			stop the action.

The bugfix informing report rule is listed instead of the standard
informing report rule in the report informing it about rulebook.

Instead of asking someone about something:
     consider the unknown quizzing rule of the noun.

Instead of telling someone about something:
     consider the unknown informing rule of the noun.
     
Instead of asking the other party of the player about something (this is the caller unknown quizzing rule):
     consider the unknown quizzing rule of the noun.

Instead of telling the other party of the player about something (this is the caller unknown informing rule):
     consider the unknown informing rule of the noun.
     
Volume 3 Generics

Feedbacklink is a weblink. The link_url of feedbacklink is "learninggamedev.wordpress.com/first-scrum/feedback/". The description of feedbacklink is "The feedback page of First Scrum".

After printing a parser error: 
	say "[line break][green letters]Was this something you'd like implemented on future versions of the game? Drop a comment on [Link for feedbacklink] and I'll get on it.[default letters]".

Book 2 The Game itself

Volume 1 General Stuff

Chapter 1 Backstory

Table of Backstory
area	response
project	"You were assigned to this project the day before yesterday. Your role was to be the team's new ScrumMaster.[paragraph break]It didn't matter that you had very little knowledge of Scrum and that the project had been going for several iterations by now. Your predecessor had left for a more lucrative opportunity elsewhere and the client had become anxious about the situation so they wanted you to be there to calm things down.[paragraph break]So, here you are in a corridor in your client's office building, heading for the room where your new team is located."
project	"The company was in a hurry to find a replacement for the team lead in this project that was dubbed as crucial for securing future projects with the same client. After a short meeting with the sales rep of the project yesterday you were basically tossed head in into the client's office."
team	"The team is supposed to be top notch -- and why not if this project is as crucial as the sales rep convinced. You just hope that you can figure out the project as fast as possible and be of some help to the team. "
Frank	"Funny thing is that the sales rep specifically told you not to call you as he is in the middle of very important contract negotiations elsewhere. The one helping hand you have is a coach that your company has provided you. His name is Frank and he is some kind of Scrum evangelist in your company.[make Frank familiar]"
Frank	"The first thing Frank did was enroll you to a Certified ScrumMaster course which is taking place next weekend, three days from now. His only advice to you was to hang tight until the weekend and try to get a feel of the status of the project and the mood of the team. And he said something about sending you a gift to the office."
Frank 	"Frank even asked the address of the client's office you are going to work in..."

To say backstory:
	if number of filled rows in Table of Backstory > 0:
		repeat through Table of Backstory: 
			say "[conditional paragraph break][blue letters][bold type]Flashback[roman type][line break][response entry][default letters]";
			blank out the whole row;
			rule succeeds.
		

Table of Table Types (continued)
tabname	index	tabtype
Table of Backstory	1	stop-list


Chapter 2 Tutorial

Commands is a familiar subject.
Understand "command" as commands.

General info is a familiar subject.

Movement is a familiar subject.
Understand "move" or "moving" or "getting around" as Movement.

Tutorial-intro is a familiar subject.

Tutorial-outro is a familiar subject.

Conversation is a familiar subject.

Looking-tutorial is a familiar subject.
Understand "Looking" as looking-tutorial.

Self-reflection is a familiar subject.

[Understand "help talk" or "help ask" or "help tell" or "help talking" as help conversation.]

HasBeenUsed is a kind of value. HasBeenUseds are unused and used. 

Table of Tutorial
area	HasBeenUsed	response
Movement	unused	"You can move in [story title] the same way as in the classical text adventure games. Just type a compass direction (e.g. [bold type]south[roman type]) and you are on your way. You can also use abbreviations of the compass directions such as [bold type]n[roman type] for north and [bold type]sw[roman type] for southwest.[if location is corridor][paragraph break]Type [bold type]north[roman type] or [bold type]n[roman type] to go into your team's office now.[end if]"
Tutorial-intro	unused	"Hello, this is the guide of '[story title]', giving you pointers on how to play. In future versions I might get a mute button but as of now you just have to bear with me a while. My job is to get you acquinted to the world of [story title] so that you can explore and interact with the story on your own.[paragraph break]The blue text above is the backstory. You'll continue to have moments of past events flash back for a while to get a picture of your current situation. This tutorial text, as you can see, is in green. All the future text in green will also be the in-game tutorial."
Tutorial-outro	unused	"So, that was the first lesson. Have fun with [story title]!"
General info	unused	"You act in the game by typing commands, such as moving, manipulating game objects (examine, get, open etc.) and conversing with people (say hello, ask about etc.). If you want more info on the game commands you can reach the help function by typing help (subject)."
Conversation	unused	"Much of this game is spent in conversation with other characters in the game, as is fitting for a game where the protagonist is a Scrum Master.[line break]The conversation is initiated with a greeting, [bold type]say hello to X[roman type] which can be shortened to [bold type]hi[roman type] when conversing with a single character in a location.[line break]In conversation you can ask the character about various things ([bold type]ask X about Y[roman type] or [bold type]a Y[roman type] in short when you have initiated the conversation with a greeting)[line break], tell them things ([bold type]tell X about Y[roman type] or [bold type]t Y[roman type] in short).[line break]You can also get a list of suggested topics with the [bold type]topics[roman type] command.[line break]With just one person in a room with you, you can jump right into heavy conversation with an ask or tell command."
Commands	unused	"Useful commands in First Scrum include the [bold type]movement[roman type] commands such as [bold type]north[roman type] or [bold type]northeast[roman type],[line break][bold type]looking[roman type] with commands such as [bold type]look[roman type] or [bold type]examine[roman type] or even [bold type]read[roman type] for short notes and [bold type]consult X on Y[roman type] for larger printed editions,[line break][bold type]conversation[roman type] commands such as [bold type]say hello to X[roman type], [bold type]ask X about Y[roman type] and [bold type]tell X about Y[roman type].[line break]Another useful command is  [bold type]self-reflection[roman type], with command [bold type]reflect[roman type]."
Looking-tutorial	unused	"You can look at your surroundings with the command [bold type]look[roman type]. You can try that at any time.[line break]To look at something or somebody closely, you can use the [bold type]examine[roman type] command, which can be abbreviated [bold type]x[roman type]. For readable material you can use commands [bold type]read[roman type] for short notes and [bold type]consult X on Y[roman type] for larger printed editions"
Self-reflection	unused	"The game does not use scoring. Instead, you can reflect on your actions in the game with the command [bold type]reflect[roman type]. It shows a history of your findings about the status of the project and your major actions to affect it. You can use this command any time."

To say tutorial for (T - a thing):
	if there is a response corresponding to an area of T in Table of Tutorial:
		choose row with area of T in the Table of Tutorial;
		if HasBeenUsed entry is unused:
			say "[paragraph break][green letters][bold type]Tutorial[roman type][line break][response entry][default letters]";
			now the HasBeenUsed entry is used;
			
Understand "help" as helping-general.

Understand "help [any thing]" as helping.

Helping-general is an action applying to nothing.

Helping is an action applying to one visible thing.

Report Helping-general:
		choose row with area of General info in the Table of Tutorial;
		say "[green letters][response entry][default letters][paragraph break]";
			now the HasBeenUsed entry is used;
		choose row with area of Commands in the Table of Tutorial;
		say "[green letters][response entry][default letters][paragraph break]";
			now the HasBeenUsed entry is used;

Instead of helping something unseen: 
	if the noun is known: 
		now the noun is seen; 
		continue the action; 
        
Report helping:
	if there is a response corresponding to an area of the noun in Table of Tutorial:
		choose row with area of the noun in the Table of Tutorial;
		say "[green letters][response entry][default letters][paragraph break]";
		now the HasBeenUsed entry is used;
	otherwise:
		say "No help on [the noun] found. Type 'help' to get the basic help information.";

test tutorial with " help / help commands / help movement / help conversation / help looking / help self-reflection "

Volume 2 Problem Missed Deadlines

Chapter 1 Typical Phrases for NPCs

A default activity description is some text that varies. The default activity description is usually "[one of]working in deep concentration[or]cheerfully humming while working[or]staring into nothingness[or]checking a manual and programming away[purely at random]".

A person has some text called activity description. The activity description is usually "[default activity description]".

A person has some text called integrate-opinion. The integrate-opinion is usually "'I think it would be best to carry on with how things were in the past', [Answers for Neutral][convnode null-node]".

Mood is a kind of value. Moods are Neutral, Frustrated, Angry, Cynical, Helpful, Enthusiastic, Reserved, Scared and Tired. 

[Table of Moods
commitment	safety	mood
-3	-3	Scared
-3	-2	Scared
-3	-1	Reserved	
-3	0	Reserved	
-3	1	Cynical
-3	2	Cynical
-2	3	Cynical
-2	-3	Scared
-2	-2	Scared
-2	-1	Reserved
-2	0	Reserved
-2	1	Cynical
-2	2	Cynical
-2	3	Cynical
-1	-3	Scared
-1	-2	Reserved
-1	-1	Reserved
-1	0	Neutral
-1	1	Helpful
-1	2	Helpful
-1	3	Helpful
0	-3	Scared
0	-2	Scared
0	-1	Neutral
0	0	Neutral
0	1	Neutral
0	2	Helpful
0	3	Helpful
1	-3	Angry
1	-2	Reserved
1	-1	Reserved
1	0	Neutral
1	1	Helpful
1	2	Helpful
1	3	Helpful
2	-3	Angry
2	-2	Frustrated
2	-1	Frustrated
2	0	Helpful
2	1	Enthusiastic
2	2	Enthusiastic
2	3	Enthusiastic
3	-3	Angry
3	-2	Frustrated
3	-1	Frustrated
3	0	Enthusiastic
3	1	Enthusiastic
3	2	Enthusiastic
3	3	Enthusiastic]


Table of plr-question phrases
response
"you ask."
"you inquire."

Table of plr-answer phrases
response
"you answer."
"you reply."
"you say in reply."


Table of plr-statement phrases
response
"you tell [Name of the current interlocutor]."
"you inform [Name of the current interlocutor]."


Table of neutral general answer phrases
response
"[Name of current interlocutor] answers."
"[Name of current interlocutor] replies."
"[Name of current interlocutor] says in reply."

Table of frustrated general answer phrases
response
"[Name of current interlocutor] quips back."
"[Name of current interlocutor] retorts."

Table of cynical general answer phrases
response
"[Name of current interlocutor] replies with a sly smile."
"[Name of current interlocutor] remarks, with a dry smile."
"[Name of current interlocutor] answers, with a wry smile."

Table of angry general answer phrases
response
"[Name of current interlocutor] shouts back."

Table of tired general answer phrases
response
"[Name of current interlocutor] grunts in reply."
"[Name of current interlocutor] sighs and yawns."

Table of helpful general answer phrases
response
"[Name of current interlocutor] answers, smiling reassuringly."
"[Name of current interlocutor] replies with a smile."

Table of Table Types (continued)
tabname	index	tabtype
Table of neutral general answer phrases	0	shuffled-list
Table of angry general answer phrases	0	shuffled-list
Table of cynical general answer phrases	0	shuffled-list
Table of tired general answer phrases	0	shuffled-list
Table of frustrated general answer phrases	0	shuffled-list
Table of helpful general answer phrases	0	shuffled-list
Table of plr-question phrases	0	shuffled-list
Table of plr-answer phrases	0	shuffled-list
Table of plr-statement phrases	0	shuffled-list

To say PlrQuestion:
	show the next response from Table of plr-question phrases.

To say PlrAnswer:
	show the next response from Table of plr-answer phrases.

To say PlrStatement:
	show the next response from Table of plr-statement phrases.
	
To say Answers for (M - a Mood):
	if M is Neutral: 
		show the next response from Table of neutral general answer phrases;
	if M is Tired: 
		show the next response from Table of tired general answer phrases;
	if M is Cynical: 
		show the next response from Table of cynical general answer phrases;
	if M is Frustrated: 
		show the next response from Table of frustrated general answer phrases;		
	if M is Angry: 
		show the next response from Table of angry general answer phrases;
	if M is helpful:	
		show the next response from Table of helpful general answer phrases;
		
Chapter 2 The Symptom

Section 1 Subjects

project is a familiar subject.

status is a familiar subject.
Understand "sprint status" or "project status" or "status report" or "report" as status.

[team board is an unfamiliar subject.]
Understand "board" or "scrum board" or "team wall" or "wall" as team board.

tests is an unfamiliar subject.
Understand "testing" or "test" or "system test" as tests.

unfinished items is an unfamiliar subject.

previous sprints is an unfamiliar subject.
Understand "project history" or "previous" or "previous sprint" as previous sprints.

database specifications is an unfamiliar subject.
Understand "db specs" or "db specifications" or "database specs" or "db problem" as database specifications.

Section 2 People

A person has some text called Name. Name of a person is usually "That guy".

team member is a kind of person. 

Rule for writing a paragraph about a team member: 
    say "[Name] is here, [activity description]."

Frank is a male person. Name of Frank is "Frank". The quizzing table is the Table of Frank's Answers. The informing table is the Table of Frank's orders. The unknown quizzing rule is the Frank-no-quiz rule.

This is the Frank-no-quiz rule: 
	show the next response from the Table of Frank's Default Quiz Responses.

After saying hello to Frank:
     say "'Hello there, [Name],' you greet him.

    'Hello hello, how's it going out there?' [Answers for Neutral]";
    if the greeting type is explicit, consider the standard list suggested topics rule.

Table of Frank's Answers
subject	response rule	response table	suggest
[status	a rule	Table of Frank's Status Responses	2]
Frank	frank2 rule	--	2
continuous-integration	a rule	Table of Frank's CI responses	2
[team board	a rule	Table of Frank's board 	2
tests	a rule	Table of Frank's tests	2
unfinished items	items rule	--	2
previous sprints	a rule	Table of Frank's sprints	3
database specifications	a rule	Table of Frank's db	2
integration	a rule	Table of Frank's integration	2]

Table of Frank's Orders
subject	response rule	response table	suggest
integration	a rule	Table of Frank's intgr reactions	3
[status	a rule	Table of Frank's Status Reactions	2]

This is the frank2 rule:
say "'How are you, [Name of Frank]?' [PlrQuestion]'I'm allright, thanks for asking', [Answers for Neutral]"

[TODO change these]
Table of Frank's Default Quiz Responses
response
"'Yeah, I think I know what you are talking about... Sorry, I don't know anything about that', [Name] replies apologetically."
"'One cannot know everything, especially at this particular project', [Answers for cynical]"
"'Sorry, I cannot help you with that', [Answers for neutral]"
"'Sorry, but what has that got to do with anything?' [Answers for frustrated]"

test frank with "phone frank / ask frank about frank / tell frank about integration "

Markku is a male team member. The quizzing table is the Table of Markku's Answers. The Name is "Markku". The unknown quizzing rule is the Markku-no-quiz rule. The description of Markku is "You see a tall heavy-set man with bowl cut brown hair and a friendly face. He wears jeans and a t-shirt of an obscure heavy metal band. [Name] is [activity description]."

This is the Markku-no-quiz rule: 
	show the next response from the Table of Markku's Default Quiz Responses.

After saying hello to Markku:
     say "'Hello, [Name],' you greet him.

    'Well hello there, boss,' [Answers for Neutral]";
    if the greeting type is explicit, consider the standard list suggested topics rule.

Table of Markku's Answers
subject	response rule	response table	suggest
status	a rule	Table of Markku's Status Responses	4
Markku	markku2 rule	--	1
team board	a rule	Table of Markku's board 	2
tests	a rule	Table of Markku's tests	3
unfinished items	items rule	--	1
previous sprints	a rule	Table of Markku's sprints	3
database specifications	a rule	Table of team's db	1
integration	a rule	Table of Markku's integration	2

This is the markku2 rule:
say "'How are you?' [PlrQuestion]'Well, a little, hmm, tired... I played Gran Turismo X until 2 am.' [Answers for Tired]"

Table of Markku's Default Quiz Responses
response
"'Yeah, I think I know what you are talking about... Sorry, I don't know anything about that', [Name] replies apologetically."
"'One cannot know everything, especially at this particular project', [Answers for cynical]"
"'Sorry, I cannot help you with that', [Answers for neutral]"
"'Sorry, but what has that got to do with anything?' [Answers for frustrated]"

The informing table of Markku is the Table of Markku's orders.

Table of Markku's Orders
subject	response rule	response table	suggest
integration	a rule	Table of Markku's intgr orders	5


Ted is a male team member. The quizzing table is the Table of Ted's Answers. The Name is "Ted". The unknown quizzing rule is the Ted-no-quiz rule. The description of Ted is "You see a slender man in his late 30[apostrophe]s with caesar cut dark hair and impressive sideburns. He wears dark slacks and a teal shirt. [Name] is [activity description]."

This is the Ted-no-quiz rule: 
	show the next response from the Table of Ted's Default Quiz Responses.

After saying hello to Ted:
     say "'Hello, [Name],' you greet him.

    'Hullo, o master of scrums,' [Answers for Neutral]";
    if the greeting type is explicit, consider the standard list suggested topics rule.

Table of Ted's Answers
subject	response rule	response table	suggest
Ted	ted2 rule	--	1
status	a rule	Table of Ted's Status Responses	1
team board	a rule	Table of Ted's board 	1
unfinished items	--	Table of Ted's items	2
tests	a rule	Table of Ted's tests	2
previous sprints	a rule	Table of Ted's sprints	1
database specifications	a rule	Table of team's db	1
integration	a rule	Table of Ted's integration	1

This is the ted2 rule:
	say "'Everything all right, [Name]?' [PlrQuestion]'Yes, fit as a fiddle, boss, how are you?' [Answers for Helpful]".

Table of Ted's Default Quiz Responses
response
"'Yeah, I think I know what you are talking about... Sorry, I don't know anything about that', [Name] replies apologetically."
"'One cannot know everything, especially at this particular project', [Answers for cynical]"
"'Sorry, I cannot help you with that', [Answers for neutral]"

The informing table of Ted is the Table of Ted's orders.

Table of Ted's Orders
subject	response rule	response table	suggest
integration	a rule	Table of Ted's intgr orders	5
	

Saana is a female team member. The quizzing table is the Table of Saana's Answers. The Name is "Saana". The unknown quizzing rule is the Saana-no-quiz rule.  The description of Saana is "You see a woman in her late 20[apostrophe]s with a striking purple spiky top hair and a serious expression on her face.She wears black gargo trousers and a purple sweater. [Name] is [activity description].".

This is the Saana-no-quiz rule: 
	show the next response from the Table of Markku's Default Quiz Responses.

After saying hello to Saana:
     say "'Hello, [Name],' you greet her.

    'Hi,' [Answers for Frustrated]";
    if the greeting type is explicit, consider the standard list suggested topics rule.

Table of Saana's Answers
subject	response rule	response table	suggest
Saana	saana2 rule	--	1
status	a rule	Table of Saana's Status Responses	3
team board	a rule	Table of Saana's board 	1
unfinished items	--	Table of Team member's items	1
tests	a rule	Table of Saana's tests	2
previous sprints	a rule	Table of Saana's sprints	2
database specifications	a rule	Table of Saana's db	1
integration	a rule	Table of Saana's integration	2

This is the saana2 rule:
	say "'How are things with you, [Name]?' [PlrQuestion]'Well, I was just trying to figure out this open source library when you came to talk to me', [Answers for Frustrated]".

The informing table of Saana is the Table of Saana's orders.

Table of Saana's Orders
subject	response rule	response table	suggest
integration	a rule	Table of Saana's intgr orders	5


Johanna is a female team member. The quizzing table is the Table of Johanna's Answers. The Name is "Johanna". The unknown quizzing rule is the Johanna-no-quiz rule.  The description of Johanna is "You see a woman in her early 40[apostrophe]s with intelligent eyes and blond hair on a pony tail. She wears light gray trouser suit with a white blouse. [Name] is [activity description].".

This is the Johanna-no-quiz rule: 
	show the next response from the Table of Markku's Default Quiz Responses.

After saying hello to Johanna:
     say "'Hello, [Name],' you greet her.

    'Hello, how can I help you?' [Answers for helpful]";
    if the greeting type is explicit, consider the standard list suggested topics rule.

Table of Johanna's Answers
subject	response rule	response table	suggest
Johanna	johanna2 rule	--	1
status	a rule	Table of Johanna's Status Responses	1
team board	a rule	Table of Johanna's board 	1
unfinished items	--	Table of Team member's items	1
tests	a rule	Table of Johanna's tests	2
previous sprints	a rule	Table of Johanna's sprints	2
database specifications	a rule	Table of Johanna's db	1
integration	a rule	Table of Markku's integration	2

This is the johanna2 rule:
	say "'How are things with you, [Name]?' [PlrQuestion]'Fine, thank you', [Answers for Neutral]".

The informing table of Johanna is the Table of Johanna's orders.

Table of Johanna's Orders
subject	response rule	response table	suggest
integration	a rule	Table of Johanna's intgr orders	5
	
test teamdescs with " nw / x markku / e / x ted / x johanna / e /x saana "

Section 3 Specific Conversation

A previous sprints finding1 is some text that varies. Previous sprints finding1 is usually "You found out from Markku that there were some problems delivering on time on previous sprints in this project."

Table of Markku's Status Responses
response
"'What does the status look like?' [PlrQuestion]'Great on paper, as usual', [Answers for neutral][Name]nods at the marker board, half-smiling.[make team board familiar]" 
"'So we have the status of work on that marker board?' [PlrQuestion]'Yeah, that was the idea. Your predecessor set that up. 'Team board', he called it. All the tasks are there and the column they are in correspond to their status. Take a look if you like', [Answers for neutral][Name]points at the team board in the southwest corner of the office." 
"'So you do think that everything is at it stands on the team board?' [PlrQuestion]'I just hope that nothing comes up in the next 3 days. Like it did in the previous sprint.[make previous sprints familiar] Or the one before that. Or the one before that. Or... You get my point.' [Answers for cynical][Report finding on previous sprints with previous sprints finding1]"
"'Anything else come to your mind about the status?' [PlrQuestion]'I think that about covers it, sir', [Answers for neutral]"

Table of Ted's Status Responses
response
"'What's the sitch?' [PlrQuestion]'All right. I've done all my tasks', [Answers for neutral]" 

Table of Saana's Status Responses
response
"'What's the status of the project?' [PlrQuestion]<Saana looks up at the marker board at the southwest corner of the office>[line break] 'Well, most of the tasks seem to be done, but I'm sure that something will come up and screw our schedule at the last minute', [Answers for cynical]." 
"'What do you mean, is there anything that might screw us?' [PlrQuestion]'Everything seems ok, but it has been the same for couple of sprints already[make previous sprints familiar] with not so promising results', [Answers for cynical]"
"'So you are worried?' [PlrQuestion]'Maybe I'm just a pessimist, but I have a bad feeling about this again', [Answers for cynical]" 

Table of Johanna's Status Responses
response
"'What's your take on the project's status?' [PlrQuestion]'It seems we're on schedule at the moment. I'm glad we got those DB specs in good time this sprint[make previous sprints familiar]', [Answers for neutral]." 

Table of Markku's board
response
"'What are your thoughts about the team board?' [PlrQuestion]'I don't know. There are a lot of items marked done that I haven't heard that they have been tested at all. [Make tests familiar]Seems a bit strange, although I may be mistaken about that ...' [Answers for neutral]"
"'Anything else come to your mind about the team board?' [PlrQuestion]'I think that about covers it, sir', [Answers for neutral]"

A unfinished item finding1 is some text that varies. Unfinished item finding1 is usually "Ted told you that some items are still in progress even though they are marked done on the team board."

Table of Ted's board
response
"'What do you think about the team wall?' [PlrQuestion]'Oh, yeah, that. Hang on... In fact, a couple of items are in progress, still. I've looked them up on the UI and there are some problems with the layout. No worries, they will be done soon.[Make unfinished items familiar][Report finding on unfinished items with unfinished item finding1]' [Answers for neutral]"

Table of Saana's board
response
"'What are your thougths about the team wall?' [PlrQuestion]'Dunno. Doesn't everyone see when I'm done by looking at my commits to the version control system?' [Answers for frustrated]"

Table of Johanna's board
response
"'What do you think about the team wall?' [PlrQuestion]'It's a shame we don't have it online. It's a bit of a drag getting up and moving the items there.' [Answers for neutral]"

Table of Markku's tests
response
"'So, there are items that have been implemented but not tested at all, is that right?' [PlrQuestion]'Well, I'm not sure. There's no way to tell, is there.', [Answers for frustrated]" 
"'Don't you do a report on test results?' [PlrQuestion]'Yes, and the tests always pass 100%', [Answers for cynical]"
"'So, what's wrong about the tests then?', [PlrQuestion]'It's just that we don't have a dedicated test team here and everything seems to go to hell at the moment we start to integrate.[make integration familiar]' [Answers for neutral]"
"Nothing more to add."
"'Anything else come to your mind about the tests?' [PlrQuestion]'Not at the moment, no', [Answers for neutral]"

Table of Ted's tests
response
"'What about testing the tasks in development?' [PlrQuestion]'Taken care of. I've had my changes deployed on the system running on my dev machine for two days now', [Answers for Neutral]" 
"'So you've tested everything?' [PlrQuestion]'Yeah, I've been clicking at it ever since, no problems found. Nothing more than the two layout problems related to the two unfinished tasks I have. But no problems[Make unfinished items familiar]', [Answers for Neutral]" 

Table of Saana's tests
response
"'So is every item tested?' [PlrQuestion]'Well, most of the items were small changes to existing backend services so no need to make new tests. So we're okay', [Answers for Neutral]" 
"'So no new tests this Sprint?' [PlrQuestion]'Well, as I said, there's really no need, ok?' [Answers for Frustrated]" 

Table of Johanna's tests
response
"'So is every item tested?' [PlrQuestion]'Well the changes were mostly new fields into database tables. I made sure that the new fields exist and are as they are specified', [Answers for Neutral]" 
"'So tests got good coverage?' [PlrQuestion]'Well, as I said, there was only some checks into the db after running the alter statements, nothing more complicated than that,' [Answers for Neutral]" 

This is the items rule:
say "'Anything still on the to-do list?' [PlrQuestion]'I have to run the tests again. And then there's the integration. That will be a pain in the ass, AGAIN[make integration familiar]', [Answers for frustrated]"

Table of Ted's items
response
"'What about those unfinished tasks?' [PlrQuestion]'Don't worry, there are only the two glitches in the UI layout', [Answers for helpful]" 
"'Will the tasks still on progress be finished on time?' [PlrQuestion]'I'll make the tweaks ASAP and have these done by the end of the sprint', [Answers for helpful]"

Table of Team member's items
response
"'Anything left to do in this sprint?' [PlrQuestion]'Nope, everything is done.', [Answers for neutral]" 

Table of Table Types (continued)
tabname	index	tabtype
Table of Markku's board	0	stop-list
Table of Markku's tests	0	stop-list
Table of Markku's Default Quiz Responses	0	shuffled-list
Table of Markku's Status Responses	0	stop-list
Table of Ted's board	0	stop-list
Table of Ted's Default Quiz Responses	0	shuffled-list
Table of Ted's Status Responses	0	stop-list
Table of Ted's items	0	stop-list
Table of Ted's tests	0	stop-list
Table of Saana's board	0	stop-list
Table of Saana's Status Responses	0	stop-list
Table of Team member's items	0	stop-list
Table of Saana's tests	0	stop-list
Table of Johanna's board	0	stop-list
Table of Johanna's Status Responses	0	stop-list
Table of Johanna's tests	0	stop-list

test markkuconv with "say hello to markku / ask markku about team board / ask markku about status / a status / ask markku about team board / ask markku about status / a tests / ask markku about tests "

test tedconv with "say hello to ted / ask ted about status / a status / ask ted about team board / ask ted about status / a tests / ask ted about tests / ask ted about unfinished items / ask ted about unfinished items "

test teduconv with "say hello to ted / ask ted about unfinished items "

test saanaconv with "say hello to saana / ask saana about status / a status / ask saana about team board / ask saana about status / ask saana about status / a tests / ask saana about tests / ask saana about unfinished items "

test johannaconv with "say hello to johanna / ask johanna about status / a status / ask johanna about team board / a tests / ask johanna about tests / ask johanna about unfinished items "

Chapter 3 Research

Section 1 Conversation

integration is an unfamiliar subject.
Understand "integrating" as integration.

A previous sprints finding2 is some text that varies. Previous sprints finding2 is usually "You found out from Markku that there were some problems delivering on time because of integration problems  on previous sprint in this project."

A previous sprints finding3 is some text that varies. Previous sprints finding3 is usually "You found out that there were some problems with the DB specs and/or the backend code on previous sprints in this project."

Table of Markku's sprints
response
"'You said that you had some problems in the previous sprints?' [PlrQuestion]'All I know is that we had a bunch of new features in the last Sprint that did not work at all when we did a test run of the Sprint Review demonstration on the integration server. The previous SM had to ask the PO to give us a couple of days more time to fix the bugs so we got everything done by the end of the Sprint' [Answers for neutral][Report finding on previous sprints with previous sprints finding2]"
"'But were there more missed deadlines earlier?' [PlrQuestion]'The Sprint before that we had some problems with the DB and the backend code[make database specifications familiar]. Saana or Johanna might remember what it was', [Answers for neutral]"
"'Did we miss the deadline that time?' [PlrQuestion]'Yeah, we had to ask more time to do all the work on that Sprint, too', [Answers for neutral]"

Table of Ted's sprints
response
"'I've heard we've had some problems in the previous sprints, anything I should know?' [PlrQuestion]'Yeah, we’ve had some trouble, but there’s bound to be some unexpected things when you try to deliver a release, isn’t there?' [Answers for neutral]"

Table of Johanna's sprints
response
"'I've heard we've had some problems in the previous sprints, anything I should know?' [PlrQuestion]'Well, a couple of sprints ago there was a big problem with a new DB table and DB specs[make database specifications familiar]. We didn’t get good specs so we missed the original Sprint deadline,' [Answers for neutral][Report finding on previous sprints with previous sprints finding3]"
"'Was the backend code part of that Sprint's work?' [PlrQuestion]'Yeah, the backend code was developed on that Sprint, too. Saana will know more about that,' [Answers for neutral]"

Table of Saana's sprints
response
"'I've heard we've had some problems in the previous sprints, anything I should know?' [PlrQuestion]'Yeah, someone usually screws something up. Or, they say that they meant some other thing instead of the thing they originally asked for, so we have to do something all over again,' [Answers for neutral]"
"'But you think that this isn't something to worry about?' [PlrQuestion]'Well, if we could get better thought-of specs or a chance to write our own specs, then yes, but if not, then I guess it's just the shitty part of this job, ain't it?' [Answers for frustrated]"

Table of team's db
response
"'I've heard about a problem with DB specs a couple of Sprints ago, do you remember anything about it?' [PlrQuestion]'No, sorry, Johanna might, though, as she usually handles the Db stuff,' [Answers for neutral]"

Table of Saana's db
response
"'I've heard about a problem with DB specs a couple of Sprints ago, do you remember anything about it?' [PlrQuestion]'Yeah, but it was a long time ago. We got pretty simple specs for a new table and a service to use it. I implemented the services, it took just a day or two. But Johanna must have understood the DB specs way wrong, because when e replaced my mock DB with the one she made for the release version, everything went to hell. We didn’t have time to get it right in time, so the SM had to ask for more time to fix her screw-up. So that made us be late that time.,' [Answers for Tired][Report finding on previous sprints with previous sprints finding3]"

Table of Johanna's db
response
"'I've heard about a problem with DB specs we had previously, could you tell me more about it?' [PlrQuestion]'The specs were really vague and I had to make some decisions about the data formats and so on. And somehow the DB tables were incompatible with the backend code using them when we tried to get the product out. It’s nice to have some coherent specs for a change.,' [Answers for neutral]"

Table of Markku's integration
response
"'What about the integration?' [PlrQuestion]'We have agreed a set schedule about integrating the work done on an iteration. It’s the second last day of the Sprint. That would be tomorrow', [Answers for neutral]"
"'How did you come up with the integration schedule?' [PlrQuestion]'We agreed that schedule when there first were problems. It’s really hard to move it further because there wouldn’t be so much time left to developing the tasks in the Sprint', [Answers for neutral]"
"'How does the integration work, in technical terms?' [PlrQuestion]'We merge our code in the version control and deploy the resulting codebase into our integration server. Takes about 30 minutes in all', [Answers for neutral]"
"'So you could start the integration at any moment?' [PlrQuestion]'Yeah, I guess, though if there's more changes still checked in to the version control we'd have to do it all over.[line break]Are you suggesting that we start the integration now instead of waiting until tomorrow as usual?', [Answers for neutral][convnode tm-integrate-now-node]"

Table of Ted's integration
response
"'What about the integration?' [PlrQuestion]'I thought we would integrate tomorrow? I still have to make these tweaks to the UI to make the columns in the pages show OK', [Answers for frustrated]"



A integration finding1 is some text that varies. integration finding1 is usually "You found out that there have been some problems with fixing the bugs found during the integration phase of Sprints in time and this has caused the team missing Sprint deadlines."

Table of Saana's integration
response
"'What about the integration?' [PlrQuestion]'I don’t know what’s so hard about it, but usually someone has screwed something up in their code so it doesn’t work as specified. And then they run to fix some bugs', [Answers for cynical]"
"'So the bugs discovered during integration have proven troublesome for the team?' [PlrQuestion]'Yeah, we have been late from the delivery deadline a number of times because somebody has screwed something and hasn't figured out how to fix things in time. Luckily the previous SM has succeeded in extending the Sprints so we have been able to fix most of the bugs and document the rest', [Answers for neutral][Report finding on integration with integration finding1]"



Table of Table Types (continued)
tabname	index	tabtype
Table of Markku's sprints	0	stop-list
Table of Ted's sprints	0	stop-list
Table of Johanna's sprints	0	stop-list
Table of Saana's sprints	0	stop-list
Table of team's db	0	stop-list
Table of Saana's db	0	stop-list
Table of Johanna's db	0	stop-list
Table of Markku's integration	0	stop-list
Table of Ted's integration	0	stop-list
Table of Saana's integration	0	stop-list

test sprintsconv with " nw / a previous sprints / a db specs / a status / a status / a status / a previous sprints / a previous sprints / a previous sprints / e / ask ted about  previous sprints / ask johanna about previous sprints / ask johanna about previous sprints / e / a previous sprints / a previous sprints / a db specs / w / ask johanna about database specs / s "


Section 2 Books

A book is a kind of thing. Understand "book" as a book. A book has a table name called the contents. Book can be identified or unidentified. Book is usually identified.

A book has some text called U-name. The u-name of a book is usually "a book".

A book has some text called I-name. The i-name of a book is usually "a blank book with no name on the cover".

Rule for printing the name of a book when the book is unidentified: 
    say "[U-name]".

Rule for printing the name of a book when the book is identified: 
    say "[I-name]".

After examining an unidentified book:
	now the noun is identified;
	now the noun is proper-named;
	
Instead of consulting a book about a topic listed in the contents of the noun: 
    say "[reply entry][paragraph break]".

A thing has some text called printing. The printing of a thing is usually "blank".

Understand the command "read" as something new. Understand "read [something]" as reading. Reading is an action applying to one thing, requiring light. Check reading: if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead. Carry out reading: say "You read: [printing of the noun][line break]". Report reading: do nothing.    

Instead of reading a book:
	say "You don't have the time now to read the entire book. Instead, you can consult it on specific topics.".
 
Report consulting a book about: 
    say "You flip through [the noun], but find no reference to [the topic understood]." instead.
    
[There is a large envelope on the empty desk. ]The large envelope is an openable closed container. The description of the envelope is "There's your name penned on the envelope. The envelope is sealed but you can see that the contents big enough to contain a book."

Scrum_book_link is a weblink. The link_url of Scrum_book_link is "www.amazon.com/gp/product/0130676349?ie=UTF8&tag=muodostelma-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0130676349". The description of Scrum_book_link is "Amazon.com".

Scrum Book is an unidentified book. The description of Scrum Book is "The book is titled Software Development with Scrum. It is written by Ken Schwaber and Mike Beedle. (link to the book on [Link for Scrum_book_link])". The contents of Scrum Book is the Table of Scrum Book. The U-name of Scrum book is "a black paperback book". The I-name of the Scrum book is "Software Development with Scrum".

Understand "Software Development with Scrum" as Scrum Book.

Scrum Book is in the large envelope. 

There is a small note in the large envelope. The description of the small note is "The note is from Frank. He wishes me the best and hopes this book will prove helpful." The printing of the note is "Best wishes on your assignment as the Scrum Master of the PRODUCT team. I hope that this book will prove helpful on your assignment. [paragraph break]Yours,[paragraph break]your coach Frank".

Table of Scrum Book
topic	reply
"practices" or "scrum practices"	"According to the book (Chapter 3), the practices of Scrum are: the role of [italic type]Scrum Master, Sprint[roman type] iterations, the [italic type]Daily Scrum[roman type] and [italic type]Sprint Planning[roman type] meetings, [italic type]End-of-Sprint Review[roman type], the [italic type]Product Backlog[roman type] and the [italic type]Product Owner[roman type] role, [italic type]the Scrum Team[roman type] and the [italic type]Sprint Backlog[roman type]. (You can read about Scrum practices by consulting each practice individually)"
"Scrum Master" or "ScrumMaster" or "Scrum Master role" or "SM"	"The chapter on Scrum Master (3.1) begins with this sentence:'The Scrum Master is responsible for the success of Scrum'.[paragraph break]The SM (Scrum Master) is a new management role introduced by Scrum. The responsibility of the SM is to link the team with the management. The Scrum Master forms a [italic type]Scrum team[roman type] and identifies and institutes a [italic type]Product Owner[roman type] for the team.[paragraph break]The SM keeps the team productive by making decisions and removing [italic type]impediments[roman type]. Important personality traits for a Scrum Master are focus, determination and initiative." 
"Product Backlog"	"The quotation in the beginning of the Product Backlog chapter (3.2): 'Product Backlog is an evolving, prioritized queue of business and technical functionality that needs to be developed into a system.'[paragraph break]Product Backlog contains every item of work that will be made to the product. It is sorted in order of priority. The Backlog is incomplete at the beginning and it can be made more complete during development. Higher priority items are more complete than the lower priority items.[paragraph break]The Product Backlog is controlled by [italic type]Product Owner[roman type]. There must be only a single Product Backlog for a given product. Multiple lists make it impossible for a team to decide what to work on. Backlog items are [italic type]estimated[roman type] as they become more detailed."
"Product Owner" or "PO"	"Product Owner is another role introduced by Scrum. The product owner is the person responsible for managing and controlling the [italic type]Product backlog[roman type]. A product manager, project manager or department manager can serve as the Product Owner.[paragraph break]There must be single Product Owner for a given product. A committee cannot serve as Product Owner.[paragraph break]To succeed the Product Owner must has the respect for his/her decisions in the organization. The role is a highly visible one as the priorization decisions are visible for all in the Product Backlog and the product itself."
"backlog" or "backlogs"	"The book mantions three kinds of backlogs, the [italic type]Product Backlog[roman type], the [italic type]Release Backlog[roman type] and the [italic type]Sprint Backlog[roman type]."
"Daily Scrum" or "Daily Scrum meeting"	"There's this quotation straight after the heading of the chapter on Daily Scrum Meetings (3.4): 'Software development is a complex process that requires lots of communications. The Daily Scrum meeting is where the team comes to communicate.'[paragraph break]Daily Scrum meeting is a daily status meeting for the [italic type]Scrum Team[roman type] that lasts 15 minutes. In the meeting the team explains what it has accomplished since the last meeting, what its is going to do before the next meeting and what obstacles (or [italic type]impediments[roman type]) are in its way.[paragraph break]The [italic type]Scrum Master[roman type] is responsible for conducting the Daily Scrums. He makes sure that the meeting stays short and on the topic. By listening the meeting carefully a manager can get a sense of the work and the state of the team. According to the book, attending Daily Scrum is easier and more informative than reading a status report.[paragraph break]The authors suggest that there should be a dedicated room for Daily Scrum meetings. Only Scrum team members are allowed to speak during Daily Scrums. The Scrum Master (SM) is instructed to ask three questions of the team members: 1) What have you done since last [italic type]Scrum[roman type]? 2) What will you do between now and the next Scrum? and 3) What got in your way of doing work?[paragraph break]The SM is instructed to identify impediments and take notes on them. He/She is instructed to work on overcoming them after the meeting. The SM must also make decisions and establish follow-up meetings if there are things to be discussed in the team."
 "sprint planning"	"The Sprint Planning Meeting chapter of the book has this ingress text:'Customers, users, management, the [italic type]Product Owner[roman type] and the [italic type]Scrum Team[roman type] determine the next [italic type]Sprint Goal[roman type] and functionality at the Sprint Planning meeting. The team then devises the individual tasks that must be performed to build the product increment.'[paragraph break]The Sprint Planning meeting consists of two consecutive meetings: 1) Team meets with the Product Owner, management and users to figure out what functionality to build during the next Sprint and 2) the team works by itself to figure out how it is going to build this functionality into a product increment during the Sprint.[paragraph break]The Product Backlog, the last increment of the product and the past performance of the team are the inputs to the Sprint Planning meeting. [paragraph break]In the first meeting, the items in the Product Backlog are identified and the goal for the Sprint is selected. Only the top priority backlog items are considered. The Sprint Goal is a more general statement of the objective of the Sprint. The team is the one that selects and commits to a suitable Sprint Goal.[paragraph break]At the second meeting the team defines [italic type]Sprint Backlog[roman type] to meet the Sprint Goal they have committed to. The Sprint Backlog is the list of tasks needed to perform in order to make the Sprint Goal. Only the team can change its Sprint Backlog during the Sprint. They can do it in order to respond to new knowledge they acquire during the Sprint."
"sprint backlog"	"The Sprint Backlog is the list of tasks needed to perform in order to make the [italic type]Sprint Goal[roman type]. 'Tasks are estimated in hours, usually ranging from four to sixteen hours of work each.' (p. 71) Team often uncovers unanticipated work during a Sprint. In these cases the book advises that 'The team is responsibe for creating new backlog items for this work and estimating the work to complete each of them.' (p.71)"
"release backlog"	"You find a concise definition from the book: 'Release Backlog is a subset of [italic type]Product Backlog[roman type] that is selected for release.' (p. 71) It also says that items in Release Backlog are estimated in days. The [italic type]Product Owner[roman type] updates these estimates together with the team as more data is uncovered."
"scrum"	"It reads in the book's index that the definition of Scrum can be found on page 2... Hmm, here are the statements about Scrum on page 2:[paragraph break]'Scrum is a management and control process that cuts through complexity to focus on building software that meets business needs. Scrum is superimposed on existing engineering practices(...).' [paragraph break]and: 'Scrum deals primarily at the level of the team.'[paragraph break]and still: 'Scrum is a kind of social engineering aiming to achieve fulfillment of all involved by fostering cooperation.'[paragraph break]Seems like Scrum is lots of things."
"team board" or "team wall" or "information radiator"	"You flip through the book and finally find the chapter about team boards. TBD"	
"Sprint"	"The book's index says that the definition of Sprint is on page 50. There are also separate entries on [italic type]Sprint Management[roman type] and [italic type]Sprint Progress[roman type]. You decide to check the definition of Sprint first:[paragraph break]'The team works for a fixed period of time called a Sprint.' (p. 50)[paragraph break]It says in the book that after the team has set the [italic type]Sprint Goal[roman type], it works to accomplish the goal. It is free to accomplish this goal as it sees fit.[paragraph break]It says here that the Sprint lasts for 30 days and the team must not be interfered with during the Sprint so that it can work in peace. It also says that the Sprint can be [italic type]terminated abnormally[roman type] under certain conditions such as when the Sprint Goal becomes obsolete or the team realizes that it cannot achieve the Sprint Goal."
"Scrum Team" or "team"	"You find the index entry on Scrum Teams and flip to page 35.[paragraph break]'A team commits to achieving a Sprint goal. The team is accorded full authority to do whatever it decides is necessary to achieve the goal.' it says in the beginning of the chapter.[paragraph break]It says here that the team commits to the product backlog items selected for the Sprint. The following chapter stresses the importance of team dynamics and that 'the team's commitment to  produce a product increment in each Sprint leads it to solve differences and draw on strengths.' It also says in the book that the team is cross functional."
"Impediment" or "obstacle"	"There's no entry in the index, but you manage to find the right chapter anyway (p. 44, chapter 3.4.5).[paragraph break]Impediment is anything that prevents a [italic type]team[roman type] member from working effectively. These include technical problems such as a server being down, resource problems such as lacking a workstation or organizational problems such as not being able to reach a person whose input would be needed.[paragraph break]The team reports the impediments they face in the [italic type]Daily Scrum[roman type] meeting. It is the [italic type]Scrum Master[roman type]'s responsibility to work to remove the impediments the team faces."
"sprint goal" or "goal"	"You find this quote from the book: 'The reason for having a Sprint Goal is to give the team some wiggle room regarding the functionality.' This is in the section on [italic type]Sprint Planning[roman type]."
"estimation" or "estimate"	"It says on the [italic type]Product Backlog[roman type] section that estimation of backlog item's is an iterative process. There's not much more in the book about estimation as far as you can see."
"sprint management"	"TBD"
"sprint progress"	"TBD"

test book with "open envelope / x scrum book / read scrum book / consult scrum book on practices / consult scrum book on practices / consult scrum book on scrum master / consult scrum book on sprint backlog / consult scrum book on backlog / consult scrum book on sprint / consult scrum book on product backlog / consult scrum book on release backlog / consult scrum book on sprint goal / consult scrum book on estimation / consult scrum book on daily scrum / consult scrum book on scrum team / consult scrum book on horoscope"

Section 3 Reflecting Findings

Table of Problem Findings
area	finding
a thing	text
--	--
--	--
--	--
--	--


To say Findings made:
[	say "You have made [number of filled rows in Table of Problem Findings] of total of [number of rows in Table of Problem Findings] possible findings for the current problem.[paragraph break]";]
	say "[green letters]You have made [number of filled rows in Table of Problem Findings] findings for the current problem.[paragraph break][default letters]";	
	if number of filled rows in Table of Problem Findings > 0:
		sort Table of Problem Findings in area order;
		say "[green letters]Your findings so far:[line break]";
		repeat through Table of Problem Findings:
			say "Area: [area entry], Your note: [finding entry][line break]";
		say "[default letters]";

To say Report finding on (t - a thing) with (note - a text):
	if there is an area corresponding to a finding of note in The Table of Problem Findings:
		Do nothing;
		[say "Debug message: You already have this finding. Thanks!";]
	otherwise:
		if number of blank rows in Table of Problem Findings > 0:
			choose a blank row in Table of Problem Findings;
			now the area entry is t;
			now the finding entry is note;
		otherwise:
			say "Error: No rows in Table of problem Findings. Please file a bug report. Thanks!".

Table of Past Actions
area	action
a thing	text
--	--
--	--
--	--
--	--

To say Actions performed:
	say "[green letters]You have made [number of filled rows in Table of Past Actions] major actions to influence the project and team in the current game.[paragraph break][default letters]";
	if number of filled rows in Table of Past Actions > 0:
		sort Table of Past Actions in area order;
		say "[green letters]Your actions so far:[line break]";
		repeat through Table of Past Actions:
			say "Area: [area entry], Your action: [action entry][line break]";
		say "[default letters]";

To say Report action on (t - a thing) with (note - a text):
	if there is an area corresponding to a finding of note in The Table of Past Actions:
		Do nothing;
		[say "Debug message: You already have this finding. Thanks!";]
	otherwise:
		if number of blank rows in Table of Past Actions > 0:
			choose a blank row in Table of Past Actions;
			now the area entry is t;
			now the action entry is note;
		otherwise:
			say "Error: No rows in Table of Past Actions. Please file a bug report. Thanks!".
	
Understand "reflect" as reflecting.

Reflecting is an action applying to nothing.

Report reflecting:
	say "[Findings made][line break][Actions performed]".

Section 4 Telephone

Understand "phone [any person]" as phoning.

Understand "telephone [any known person]" as phoning.

Phoning is an action applying to one visible thing.

Report phoning:
	say "The phone rings a couple of times and then the call is picked up. 'Hullo?' [Name of the noun] answers the call.";
	implicitly greet the noun;
	

Connection relates a person to another (called the other party). The verb to reach (it reaches, they reach, it reached) implies the connection relation.

Check phoning:
	if the noun is in the location, say "[The noun] is right here." instead;
	if the noun is not Frank, say "There's no answer." instead;
	if the noun is player, say "You get a busy singal." instead.

Carry out phoning:
	now the player reaches the noun.
	
Before phoning  when the player reaches someone: 
	say "(first ending your conversation with [the other party of the player])[command clarification break]"; 
	end current conversation.

Understand "hang up" as hanging up.

Hanging up is an action applying to nothing.

Check hanging up: 
	if the player does not reach someone, say "You're not on the line with anyone." instead.
	
Carry out hanging up: 
	try saying goodbye to the other party of the player;
	now the player does not reach anyone.
	
	
Report hanging up:
	say "You close your phone, cutting the connection."

Before going somewhere when the player reaches someone: 
	say "(first hanging up on [the other party of the player])[command clarification break]"; 
	end current conversation.

To end current conversation: 
	silently try hanging up.
	
After deciding the scope of the player while the player reaches someone: 
	place the other party of the player in scope, but not its contents.	
        
[Instead of phoning someone unseen: 
	if the noun is a person:
		if the noun is known: 
			now the noun is seen; 
			continue the action;]

[Before implicit-conversing when the current interlocutor is not visible and the current interlocutor is not nothing  (this is the can't converse with absent interlocutor if not on the phone rule):
  say "[The current interlocutor] isn't here.";
  reset the interlocutor instead.]

Section 5 Frank

Continuous-integration is an unfamiliar subject.

Understand "continuous integration" as continuous-integration.

Table of Frank's intgr reactions
response
"'We've had some problems with integration testing. Apparently there have been lots of problems to integrate the team's work at the end of Sprints.' [PlrQuestion]'Hmm, sounds like there really could be some problems with that. Is the team integrating their work only at the end of a Sprint?', [Answers for neutral][convnode frank-integrate-end-node]"

XP_CI_link is a weblink. The link_url of XP_CI_link is "www.extremeprogramming.org/rules/integrateoften.html". The description of XP_CI_link is "link to Continuous integration on the XP pages".

CI_wikipedia is a weblink. The link_url of CI_wikipedia is "en.wikipedia.org/wiki/Continuous_integration". The description of CI_wikipedia is "The Wikipedia entry for Continuous Integration".

Table of Frank's CI responses
response
"'You mentioned continuous integration, any pointers on where to look it up and how it could help our team?' [PlrQuestion]'Well, technically it is about automating the build and the testing. It's also about delivering early and delivering often so it probably requires a change of process from the developers. It is a practice of eXtreme Programming ([Link for XP_CI_link]).[paragraph break][Link for CI_wikipedia] can be of some use.', [Answers for neutral]"

Table of Table Types (continued)
tabname	index	tabtype
Table of Frank's intgr reactions	0	stop-list
Table of Frank's CI responses	0	stop-list

The frank-integrate-end-node is a Conversation node. The suggestions is "say yes or no, or say that you don't know".

The frank-integrate-end rules is a rulebook. The node rule of frank-integrate-end-node is frank-integrate-end rules.

A frank-integrate-end rule when saying no: 
	say "'No, I think they do integrate before that, I'm just not sure about the procedures', [PlrAnswer].[line break]'Ok, maybe you should inquire a little more to see if there really is some problems there', [Answers for neutral][convnode null-node]";
	rule succeeds;

A frank-integrate-end rule when saying yes: 
	say "'Yes, they are running the integration tests during the second last day of the Sprint', [PlrAnswer][line break]'Hm, is there a reason for that? There are many reports about [bold type]continuous integration[roman type] being a very effective practice despite the extra work it entails', [Answers for neutral][convnode null-node][make continuous-integration familiar]";
	rule succeeds;

The last frank-integrate-end rule: 
	say "'I asked you if the team is only integrating their work at the end of Sprints because this is beginning to sound very interesting indeed', [Name of the current interlocutor] reminds you.";
	rule succeeds;

Understand "you don't/dont know" or "i don't/dont know" or "don't know" or "dont know" as "[dont know]".

Understand "[dont know]" as Xspcing when the current convnode is the frank-integrate-end-node.

A frank-integrate-end rule when Xspcing:	
	[if the command matches "[dont know]" begin;]
		say "[dont know team-integrate].";
		rule succeeds;
[	end if;]


A frank-integrate-end rule when answering and the topic understood matches "[dont know]": 
	say "[dont know team-integrate].";
	rule succeeds;
	
To say dont know team-integrate:
	say "'I don't know, maybe I have to ask about it a bit more.', [PlrAnswer]'Sounds like a good place to make your time worth the while', [Answers for neutral][convnode null-node]"


Chapter 4 Actions

Section 1 Integration

The tm-integrate-now-node is a Conversation node. The suggestions is "say yes or no, or say that you don't know".

The tm-integrate-now rules is a rulebook. The node rule of tm-integrate-now-node is tm-integrate-now rules.

A tm-integrate-now rule when saying no: 
	say "'No, let's wait until tomorrow', [PlrAnswer].[line break][convnode null-node]";
	rule succeeds;

A tm-integrate-now rule when saying yes: 
	say "'Yes, we've waited long enough. Let's find out now what problems we still have to fix', [PlrAnswer][line break][convnode null-node]";
	rule succeeds;

The last tm-integrate-now rule: 
	say "'I asked you if we should start integrating now', [Name of the current interlocutor] reminds you.";
	rule succeeds;

Understand "you don't/dont know" or "i don't/dont know" or "don't know" or "dont know" as "[dont know]".

Understand "[dont know]" as Xspcing when the current convnode is the tm-integrate-now-node.

A tm-integrate-now rule when Xspcing:	
	[if the command matches "[dont know]" begin;]
		say "[dont know integrate].";
		rule succeeds;
[	end if;]


A tm-integrate-now rule when answering and the topic understood matches "[dont know]": 
	say "[dont know integrate].";
	rule succeeds;
	
To say dont know integrate:
	say "'I don't know, I've not been here for too long. What do you think?', [PlrAnswer][integrate-opinion of current interlocutor]"

The integrate-opinion of Markku is "'I don't suppose the other devs would like to shorten the time to polish their code this Sprint. Maybe we could try it out next Sprint?' [Answers for Frustrated][convnode null-node]".

The integrate-opinion of Saana is "'In fact, that would probably make a lot of sense. Shall I tell the rest of the guys that they should check in their changes and start the deployment to the integration server?' [Name of current interlocutor] asks. [convnode tm-integrate-proceed-node]" 

The tm-integrate-proceed-node is a Conversation node. The suggestions is "say yes or no".

The tm-integrate-proceed rules is a rulebook. The node rule of tm-integrate-proceed-node is tm-integrate-proceed rules.

A tm-integrate-proceed rule when saying no: 
	say "'No, I'm going to tell myself later, I've got a couple of things to check before we can proceed', [PlrAnswer]'Ok, you're the boss', [Answers for Neutral][line break][convnode null-node]";
	rule succeeds;

A tm-integrate-proceed rule when saying yes: 
	say "'Yes, please do that', [PlrAnswer]'Ok, I'll get right on it', [Answers for helpful][line break][Report action on integration with integration-action-note1][update integration quizzing topics][convnode null-node]";
	rule succeeds;

The last tm-integrate-proceed rule: 
	say "'I asked you if I should inform the other guys about checking in their changes and deploy the new version to the integration server', [Name of the current interlocutor] reminds you.";
	rule succeeds;

A integration-action-note1 is some text that varies. integration-action-note1 is usually "You made the decision to start the integration testing phase today instead of waiting another day to see what the potential problems with integration would be in this Sprint."

Table of Markku's intgr orders
response
"'I'd like you to start the preparations to start the integration testing', [PlrStatement][integrate-opinion of the current interlocutor]"
"'I think next Sprint is too late. Could you to start the preparations for the integration testing', [PlrStatement]'Ok, shall I tell Saana to start prepping the deployment to the integration server?' [Answers for Frustrated][convnode tm-integrate-proceed-node]"

Table of Saana's intgr orders
response
"'I'd like you to start the preparations to start the integration testing', [PlrStatement][integrate-opinion of the current interlocutor]"

Table of Ted's intgr orders
response
"'I'd like you to start the preparations to start the integration testing', [PlrStatement][integrate-opinion of the current interlocutor]"
"'Today would be better for the integration, don't you agree? Let's start now.'  [PlrStatement]'I still have those couple of bugs to fix on the UI, we'll have to do this all over again after I've checked those changes in', [Answers for Frustrated]"
"'Still, they sound like minor changes. Let's start the integration now.'  [PlrStatement]'Ok, I guess you know what you're doing, shall I ask Saana to start prepping the deployment to the integration server?' [Answers for Frustrated][convnode tm-integrate-proceed-node]"

Table of Johanna's intgr orders
response
"'I'd like you to start the preparations to start the integration testing', [PlrStatement][integrate-opinion of the current interlocutor]"
"'Today would be better for the integration, don't you agree? Let's start now.', [PlrStatement]'Saana is normally the one to do it, you should probably talk to her instead', [Answers for Tired]"


Table of Table Types (continued)
tabname	index	tabtype
Table of Saana's intgr orders	0	stop-list
Table of Markku's intgr orders	0	stop-list
Table of Ted's intgr orders	0	stop-list
Table of Johanna's intgr orders	0	stop-list


Chapter 5 Effects

Section 1 Start Integration

Table of Ted's integration2
response
"'Any worries now that we have started to integrate?' [PlrQuestion]'I seriously thought we would integrate tomorrow. I still have to make these tweaks to the UI to make the columns in the pages show OK', [Answers for frustrated]"
"'But are the changes so big that the others have to make fixes after you've checked them in?' [PlrQuestion]'Well, how would one know? ... Hmm, I guess that's not that probable', [Answers for Neutral]"

Table of Markku's integration2
response
"'Any worries now that we have started to integrate?' [PlrQuestion]'Well, not more than if we would have done this tomorrow', [Answers for cynical]"

Table of Johanna's integration2
response
"'Any worries now that we have started to integrate?' [PlrQuestion]'I'm just wondering how the others are coping with this thing. For me getting the feedback earlier is just a bonus', [Answers for neutral]"

Table of Saana's integration2
response
"'How is the integration testing going?' [PlrQuestion]'Still haven't finished, but hold on. I'll let you know as soon as we have the results', [Answers for neutral]"

To say update integration quizzing topics:
	now the response table in row 8 of the quizzing table of Markku is Table of Markku's integration2;
	now the suggest in row 8 of the quizzing table of Markku is 1;
	now the response table in row 8 of the quizzing table of Ted is Table of Ted's integration2;
	now the suggest in row 8 of the quizzing table of Ted is 2;
	now the response table in row 8 of the quizzing table of Saana is Table of Saana's integration2;
	now the suggest in row 8 of the quizzing table of Saana is 1;
	now the response table in row 8 of the quizzing table of Johanna is Table of Johanna's integration2;
	now the suggest in row 8 of the quizzing table of Johanna is 1;
	now the suggest in row 1 of the informing table of Johanna is -1;
	now the suggest in row 1 of the informing table of Markku is -1;
	now the suggest in row 1 of the informing table of Ted is -1;
	now the suggest in row 1 of the informing table of Saana is -1;

Table of Table Types (continued)
tabname	index	tabtype
Table of Ted's integration2	0	stop-list
Table of Markku's integration2	0	stop-list
Table of Johanna's integration2	0	stop-list
Table of Saana's integration2	0	stop-list	

Integration-events is a scene. Integration-events begins when the suggest in row 1 of the informing table of Saana is -1.

Every turn during Integration-events:
	repeat through Table of Integration Events: 
		say "[event entry][paragraph break]"; 
		blank out the whole row; 
		rule succeeds.
		
Table of Integration Events
event
a text
--
--
--
--
--
"[change activity of Saana to walking-around-office-act-text]"
"[move Saana to north end of the office]"
"[Saana speaking to Johanna saying start-integration-text]"
"[Saana speaking to Ted saying start-integration-text][change activity of Johanna to checking-screen-act-text]"
"[move Saana to northwest corner][change activity of Ted to typing-cursing-act-text]"
"[Saana speaking to Markku saying start-integration-text][change activity of Markku to working-cheerful-act-text]"
"[move Saana to north end][Johanna speaking to Saana saying all-done-comment][change activity of Johanna to default activity description]"
"[move Saana to northeast corner][Ted speaking to Saana saying takes-some-time-comment]"
"[change activity of Saana to checking-screen-act-text]"
"[change activity of Markku to walking-around-office-act-text]"
"[move Markku to north end]"
"[move markku to northeast corner]"
"[Markku speaking to Saana saying all-done-comment]"
"[move Markku to north end]"
"[move markku to northwest corner]"
"[change activity of Markku to default activity description]"
"[change activity of Ted to default activity description]"
"[change activity of Saana to working-cheerful-act-text]"
"[move courier to outsideroom]"
"[move courier to outsideroom]"
"[move courier to outsideroom]"
"[move courier to outsideroom]"
"[move courier to outsideroom]"
"[move courier to outsideroom]"
"[move courier to outsideroom]"


walking-around-office-act-text is some text that varies. walking-around-office-act-text is "walking around".

checking-screen-act-text is some text that varies. checking-screen-act-text is "checking something on her screen deep in concentration".

typing-cursing-act-text is some text that varies. typing-cursing-act-text is "typing noisily on his keyboard, muttering something under his breath".

working-cheerful-act-text is some text that varies. working-cheerful-act-text is "working on his computer and whistling cheerfully". 

all-done-comment is some text that varies. all-done-comment is "I've checked my work in. You can proceed with deploy as far as I'm concerned".

takes-some-time-comment is some text that varies. takes-some-time-comment is "It's gonna take a while as I've got these local copies that I've worked on and I've got to double-check them. I'll IM you when I'm done".


start-integration-text is some text that varies. start-integration-text is "[one of]Come on,[or]Could you please[or]Please[at random] check in your work, we're about to start the integration testing soon".

To say change activity of (p - a person) to (t - a text):
	now activity description of p is t;

To say (talker - a person) speaking to (talkee - a person) saying (t - a text):
	if location is the location of talker:
		say "'[t]', [Name of talker] says to [Name of talkee].";
	otherwise:
		if location is in the map region of location of talker:
			say "[Name of talker] speaks something with [Name of talkee].";
			

Integration-events ends when the number of filled rows in the Table of Integration Events is 0.

Integration-fails is a scene. Integration-fails begins when Integration-events ends.

Every turn during Integration-fails:
	repeat through Table of Integration Fails: 
		say "[event entry][paragraph break]"; 
		blank out the whole row; 
		rule succeeds.

Table of Integration Fails
event
"[Name of Saana] curses loudly and very creatively."
"'Okay everybody, THE INTEGRATION BUILD HAS FAILED', [Name of Saana] yells."
"'The WHOLE **CKING PIECE OF **IT doesn't even install', [Name of Saana] exclaims."
"'Check out the logs everybody and find out WHICH ONE IS GUILTY of **cking up the build', [Name of Saana] exclaims."

Integration-fails ends when the number of filled rows in the Table of Integration Fails is 0.
	
Chapter 6 Scenery

Section 1 Rooms

The corridor is a room. Corridor is south from the room called By the door. "This is the corridor that leads to the open office where your team is located. The open office is to the north. The meeting room assigned to your team is to the south, behind a locked door."

By the door is a room. "You are in the team's open office, by the south wall. There's a door to the corridor to the south. The open office opens to the west, north and east. The other desks are to the northwest and north and to the northeast there's a makeshift cubicle. The supply cabinet is to the east.

[Team board narrative][tutorial for Looking-tutorial]". Printed name of by the door is "Open office, by the door". The empty desk is a supporter in By the door. "There's an empty desk by the door. There are some cables at the back of the desk." 

Northwest corner is a room. "You are in the team's open office, Northwest corner. [Team board narrative][tutorial for Conversation]". Northwest corner is northwest from By the door. Printed name of Northwest corner is "Northwest corner of the open office". [Markku is in a room called the Northwest corner.]

North end of the office is a room. "You are by the north wall in the open office. There's the desk where Johanna and Ted are located here. [Team board narrative][tutorial for Conversation]". Printed name of North end of the office is "North end of the open office". North end of the office is north from a room called By the door. Ted is in north end of the office.

Northeast corner is a room. "You are in the northeast corner of the open office. In a makeshift cubicle there's Saana's desk. [Team board narrative][tutorial for Conversation]". Printed name of Northeast corner is "Northeast corner of the open office".  Northeast corner is northeast from by the door. Saana is in the room called Northeast corner.

Southwest corner is a room. "You are by the south wall of the team's open office, west of the door. There's the marker board filled with post-its here. ". Printed name of Southwest corner is "Southwest corner of the open office".  Southwest corner is west from By the door.

The team board is scenery in the southwest corner. "On the south wall there is a marker board filled with post-it notes. There are three columns drawn on the board: 'TODO', 'In Progress' and 'DONE'. All the post-its are in the 'DONE' column." 

Southeast corner is a room. "You are in the southeast corner of the open office. There's a supply closet here. [Team board narrative] ". Printed name of southeast corner is "Southeast corner of the open office". Supply closet is scenery in the Southeast corner. Southeast corner is east from By the door.

Work area is a region. Northwest corner, By the door, North end of office, Southeast corner and Northeast corner are in the Work area. 

Open office is a region. Work area and Southwest corner are in the Open office. 

The marker board backdrop is a backdrop. "On the west end of the south wall there's a marker board with colored post-it notes. You are unable to see the much more from here." The marker board backdrop is in the work area.

Team board narrative is some text which varies. Team board narrative is "On the southwest corner of the office, there's a marker board attached to the south wall."

The courier is a male person. The courier has some text called name. The name of courier is "courier". The large envelope is carried by the courier.

Outsideroom is a room. Printed name of outsideroom is "outside".

Section 2 Directions

Northwest corner is north from Southwest corner.

North end of the office is east from Northwest corner.

Northeast corner is east from North end of office.

Southeast corner is south from Northeast corner.

Southeast corner is southeast from North end of the office.

North end of the office is northeast from Southwest corner.

test openoffice with " w / n / e / e / s / nw / sw / e"

test teamboard with " x board / w / x board / n / ask markku about team board "

Section 3 Open office Descriptions

After printing the locale description when the player is in the open office:
	say "[open office activity]".
			
To say open office activity:
	repeat with culprit running through people who are not the player: 
		if the culprit is in the open office: 
			if the culprit is not in location:
				say "[Name of the culprit] is [activity description of culprit] in [location of the culprit].[line break]"
	
Section 4 Scenes

Morning is a scene. Morning begins when play begins.

Every turn during Morning:
	repeat through Table of Morning Events: 
		say "[event entry][paragraph break]"; 
		blank out the whole row; 
		rule succeeds.
        
Table of Morning Events
event
"[move Markku to corridor][tutorial for Movement]"
"[move Markku to By the door]"
"[move Johanna to corridor][move Markku to southwest corner][backstory]"
"[move Johanna to By the door]"
"[move Markku to northwest corner][backstory]"
"[move Johanna to north end of the office][backstory]"
""
"[move courier to corridor]"
"[move courier to By the door][backstory]"
"[courier puts large envelope to the empty desk][delivery message][backstory]"
"[move courier to corridor]"
"[move courier to outsideroom][tutorial for Self-reflection]"

To say move (p - a person) to (l - a room):
	if p can be seen by the player, say "[Name of p] heads to the [l].";
	move p to l;
	if p can be seen by the player, say "[Name of p] arrives here. [if Morning is happening]'Good morning,' [Name of p] says to you.[end if]" 

To say delivery message:
	if player is in the open office:
		say "'You've got a delivery, I'll put it on the desk by the door as I don't see a mail box here', exclaims the delivery boy from the door of the office.[paragraph break]"

To say (p - a person) puts (t - a thing) to (sup - a supporter):
	if t is carried by p:
		if sup is in the location of p:
			if p can be seen by the player, say "[Name of p] puts [t] on [sup].";
			now t is on sup.
	
test morning with " z / z / z / z / w / e / z "

Morning ends when the number of filled rows in the Table of Morning Events is 0.
