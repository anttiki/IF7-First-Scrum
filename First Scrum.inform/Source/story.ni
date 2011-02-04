
"First Scrum" by Antti Kirjavainen

[This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
http://creativecommons.org/licenses/by-nc-sa/3.0/]

Include Conversation Rules by Eric Eve.

Book 1 Bug Fix

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

Instead of asking someone about something:
     consider the unknown quizzing rule of the noun.

    Instead of telling someone about something:
     consider the unknown informing rule of the noun.
     
Book 2 The Game itself

Volume 1 Problem Missed Deadlines

Chapter 1 Typical Phrases for NPCs

Mood is a kind of value. Moods are Neutral, Frustrated, Angry, Cynical, and Tired. 

Table of plr-question phrases
response
"you ask."
"you inquire."

Table of neutral general answer phrases
response
"[Name] answers."
"[Name] replies."
"[Name] says in reply."

Table of frustrated general answer phrases
response
"[Name] quips back."
"[Name] retorts."

Table of cynical general answer phrases
response
"[Name] replies with a sly smile."
"[Name] remarks, with a dry smile."
"[Name] answers, with a wry smile."

Table of angry general answer phrases
response
"[Name] shouts back."

Table of tired general answer phrases
response
"[Name] grunts in reply."
"[Name] sighs and yawns."

Table of Table Types (continued)
tabname	index	tabtype
Table of neutral general answer phrases	0	shuffled-list
Table of angry general answer phrases	0	shuffled-list
Table of cynical general answer phrases	0	shuffled-list
Table of tired general answer phrases	0	shuffled-list
Table of frustrated general answer phrases	0	shuffled-list
Table of plr-question phrases	0	shuffled-list

To say PlrQuestion:
	show the next response from Table of plr-question phrases.
	
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
			
Chapter 2 The Symptom

status is a familiar subject.
Understand "sprint status" or "project status" or "status report" or "report" as status.

team board is an unfamiliar subject.
Understand "board" or "scrum board" or "team wall" or "wall" as team board.

tests is an unfamiliar subject.
Understand "testing" or "test" or "system test" as tests.

unfinished items is an unfamiliar subject.

team member is a kind of person. Team member has some text called Name. Name is usually "That guy".

[Markku-start-node is a convnode. The next-node is Markku-start-node. Ask-suggestions are {status, team board, tests, unfinished items}.]

Markku is a male team member. The quizzing table is the Table of Markku's Answers. The Name is "Markku". The unknown quizzing rule is the Markku-no-quiz rule.

This is the Markku-no-quiz rule: 
	show the next response from the Table of Markku's Default Quiz Responses.

After saying hello to Markku:
     say "'Good morning, [Name],' you greet him.

    'I don't know what's good about it, boss,' [Answers for Tired]";
    if the greeting type is explicit, consider the standard list suggested topics rule.


Table of Markku's Answers
subject	response rule	response table	suggest
Markku	markku2 rule	--	1
status	a rule	Table of Markku's Status Responses	3
team board	a rule	Table of Markku's board 	2
tests	a rule	Table of Markku's tests	
unfinished items	items rule	--	1

This is the markku2 rule:
say "'How are you?' [PlrQuestion]'Well, a little, hmm, tired... I played Gran Turismo X until 2 am.' [Answers for Tired]"



Table of Markku's Default Quiz Responses
response
"'Yeah, I think I know what you are talking about... Sorry, I don't know anything about that', [Name] replies apologetically."
"'One cannot know everything, especially at this particular project', [Answers for cynical]"
"'Sorry, I cannot help you with that', [Answers for neutral]"
"'Sorry, but what has that got to do with anything?' [Answers for frustrated]"


Table of Markku's Status Responses
response
"'What does the status look like?' [PlrQuestion]'Great on paper, as usual', [Answers for neutral][Name] nods at the team board, half-smiling.[make team board familiar]." 
"'So you do think that everything is at it stands on the team board?' [PlrQuestion]'I just hope that nothing comes up in the next 3 days. Like it did in the previous sprint. Or the one before that. Or the one before that. Or... You get my point.' [Answers for cynical]"
"'Anything else come to your mind about the status?' [PlrQuestion]'I think that about covers it, sir', [Answers for neutral]"

Table of Markku's board
response
"'What are your thoughts about the team board?' [PlrQuestion]'I don't know. There are a lot of items marked done that I haven't heard that they have been tested at all. [Make tests familiar]Seems a bit strange, although I may be mistaken about that ...' [Answers for neutral]"
"'Anything else come to your mind about the team board?' [PlrQuestion]'I think that about covers it, sir', [Answers for neutral]"


Table of Markku's tests
response
"'So, there are items that have been implemented but not tested at all, is that right?' [PlrQuestion]'Well, I'm not sure. There's no way to tell, is there.', [Answers for frustrated]" 
"'Don't you do a report on test results?' [PlrQuestion]'Yes, and the tests always pass 100%', [Answers for cynical]"
"'So, what's wrong about the tests then?', [PlrQuestion]'It's just that we don't have a dedicated test team here and everything seems to go to hell at the moment we start to integrate.' [Answers for neutral]"
"Nothing more to add."
"'Anything else come to your mind about the tests?' [PlrQuestion]'Not at the moment, no', [Answers for neutral]"

This is the items rule:
say "'Anything still on the to-do list?' [PlrQuestion]'I have to run the tests again. And then there's the integration. That will be a pain in the ass, AGAIN.' [Answers for frustrated]"


Team room is a room. Markku is in the team room. [Johanna is in the team room.]

[Team room north corner is a room. Team room north corner is north of the team room. Ted is in the team room north corner. Saana is in the team room north corner.]

Table of Table Types (continued)
tabname	index	tabtype
Table of Markku's board	0	stop-list
Table of Markku's tests	0	stop-list
Table of Markku's Default Quiz Responses	0	shuffled-list
Table of Markku's Status Responses	0	stop-list

