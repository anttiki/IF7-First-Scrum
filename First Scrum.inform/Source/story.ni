
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

Chapter 1 The Symptom

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
     say "'Good morning, your excellency,' you greet him.

    'I don't know what's good about it, boss,' [Name] grunts in reply.";
    if the greeting type is explicit, consider the standard list suggested topics rule.


Table of Markku's Answers
subject	response rule	response table	suggest
Markku	markku2 rule	--	1
status	--	Table of Markku's Status Responses	2
team board	a rule	Table of Markku's board 	1
tests	a rule	Table of Markku's tests	3
unfinished items	items rule	--	1

This is the markku2 rule:
say "'How are you?' you ask.[paragraph break]'Well, a little, hmm, tired... I played Gran Turismo X until 2 am.' [Name] answers."



Table of Markku's Default Quiz Responses
response
"'Yeah, I think I know what you are talking about... Sorry, I don't know anything about that', [Name] replies apologetically."
"'One cannot know everything, especially at this particular project', [Name] replies with a sly smile."
"'Sorry, I cannot help you with that', [Name] answers frankly."
"'Sorry, but what has that got to do with anything?' [Name] quips back."


Table of Markku's Status Responses
response
"'What does the status look like?' you ask.[paragraph break] 'Great on paper, as usual', [Name] responds, slowly and nods at the team board[make team board familiar]." 
"So you do think that everything is at it stands on the team board?'', you inquire.[paragraph break]'I just hope that nothing comes up in the next 3 days. Like it did in the previous sprint. Or the one before that. Or the one before that. Or... You get my point.' [Name] remarks, with a dry smile."


Table of Markku's board
response
"'What are your thoughts about the team board?' you ask.[paragraph break] 'I don't know. There are a lot of items marked done that I haven't heard that they have been tested at all. [Make tests familiar]Seems a bit strange, although I may be mistaken about that ...' [Name] answers."


Table of Markku's tests
response
"'So, there are items that have been implemented but not tested at all, is that right?' you ask.[paragraph break]'Well, I'm not sure. There's no way to tell, is there.', [Name] retorts." 
"'Don't you do a report on test results?' you ask.[paragraph break]'Yes, and the tests always pass 100%', [Name] answers, with a wry smile."
"'So, what's wrong about the tests then?', you ask. [paragraph break]'It's just that we don't have a dedicated test team here and everything seems to go to hell at the moment we start to integrate.' [Name] answers."
"Nothing more to add."

This is the items rule:
say "'Anything still on the to-do list?' you ask.[paragraph break] 'I have to run the tests again. And then there's the integration. That will be a pain in the ass, AGAIN.' [Name] answers."


Team room is a room. Markku is in the team room. [Johanna is in the team room.]

[Team room north corner is a room. Team room north corner is north of the team room. Ted is in the team room north corner. Saana is in the team room north corner.]

Table of Table Types (continued)
tabname	index	tabtype
Table of Markku's board	0	stop-list
Table of Markku's tests	0	stop-list
Table of Markku's Default Quiz Responses	0	shuffled-list
Table of Markku's Status Responses	0	stop-list