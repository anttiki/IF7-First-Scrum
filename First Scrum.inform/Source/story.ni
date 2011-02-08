
"First Scrum" by Antti Kirjavainen

[This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
http://creativecommons.org/licenses/by-nc-sa/3.0/]

The story description is "This is a work-in-progress. 

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License (http://creativecommons.org/licenses/by-nc-sa/3.0/)."

When play begins: say "This is a work-in-progress. 

This work is licensed under a <a href=[quotation mark]http://creativecommons.org/licenses/by-nc-sa/3.0/[quotation mark]>Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.".

Include Conversation Rules by Eric Eve.

Use no scoring.

Use BRIEF room descriptions.

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

Mood is a kind of value. Moods are Neutral, Frustrated, Angry, Cynical, Helpful and Tired. 

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

Table of helpful general answer phrases
response
"[Name] answers, smiling reassuringly."
"[Name] replies with a smile."

Table of Table Types (continued)
tabname	index	tabtype
Table of neutral general answer phrases	0	shuffled-list
Table of angry general answer phrases	0	shuffled-list
Table of cynical general answer phrases	0	shuffled-list
Table of tired general answer phrases	0	shuffled-list
Table of frustrated general answer phrases	0	shuffled-list
Table of helpful general answer phrases	0	shuffled-list
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
	if M is helpful:	
		show the next response from Table of helpful general answer phrases;
		
Chapter 2 The Symptom

Section 1 Subjects

status is a familiar subject.
Understand "sprint status" or "project status" or "status report" or "report" as status.

[team board is an unfamiliar subject.]
Understand "board" or "scrum board" or "team wall" or "wall" as team board.

tests is an unfamiliar subject.
Understand "testing" or "test" or "system test" as tests.

unfinished items is an unfamiliar subject.

Section 2 People

team member is a kind of person. Team member has some text called Name. Name is usually "That guy".

Markku is a male team member. The quizzing table is the Table of Markku's Answers. The Name is "Markku". The unknown quizzing rule is the Markku-no-quiz rule.

This is the Markku-no-quiz rule: 
	show the next response from the Table of Markku's Default Quiz Responses.

After saying hello to Markku:
     say "'Hello, [Name],' you greet him.

    'Well hello there, boss,' [Answers for Neutral]";
    if the greeting type is explicit, consider the standard list suggested topics rule.

Table of Markku's Answers
subject	response rule	response table	suggest
Markku	markku2 rule	--	1
status	a rule	Table of Markku's Status Responses	3
team board	a rule	Table of Markku's board 	2
tests	a rule	Table of Markku's tests	3
unfinished items	items rule	--	1

This is the markku2 rule:
say "'How are you?' [PlrQuestion]'Well, a little, hmm, tired... I played Gran Turismo X until 2 am.' [Answers for Tired]"

Table of Markku's Default Quiz Responses
response
"'Yeah, I think I know what you are talking about... Sorry, I don't know anything about that', [Name] replies apologetically."
"'One cannot know everything, especially at this particular project', [Answers for cynical]"
"'Sorry, I cannot help you with that', [Answers for neutral]"
"'Sorry, but what has that got to do with anything?' [Answers for frustrated]"

Ted is a male team member. The quizzing table is the Table of Ted's Answers. The Name is "Ted". The unknown quizzing rule is the Ted-no-quiz rule.

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

This is the ted2 rule:
	say "'Everything all right, [Name]?' [PlrQuestion]'Yes, fit as a fiddle, boss, how are you?' [Answers for Helpful]".

Table of Ted's Default Quiz Responses
response
"'Yeah, I think I know what you are talking about... Sorry, I don't know anything about that', [Name] replies apologetically."
"'One cannot know everything, especially at this particular project', [Answers for cynical]"
"'Sorry, I cannot help you with that', [Answers for neutral]"

Section 3 Specific Conversation

Table of Markku's Status Responses
response
"'What does the status look like?' [PlrQuestion]'Great on paper, as usual', [Answers for neutral][Name] nods at the team board, half-smiling.[make team board familiar]." 
"'So you do think that everything is at it stands on the team board?' [PlrQuestion]'I just hope that nothing comes up in the next 3 days. Like it did in the previous sprint. Or the one before that. Or the one before that. Or... You get my point.' [Answers for cynical]"
"'Anything else come to your mind about the status?' [PlrQuestion]'I think that about covers it, sir', [Answers for neutral]"

Table of Ted's Status Responses
response
"'What's the sitch?' [PlrQuestion]'All right. I've done all my tasks', [Answers for neutral]." 

Table of Markku's board
response
"'What are your thoughts about the team board?' [PlrQuestion]'I don't know. There are a lot of items marked done that I haven't heard that they have been tested at all. [Make tests familiar]Seems a bit strange, although I may be mistaken about that ...' [Answers for neutral]"
"'Anything else come to your mind about the team board?' [PlrQuestion]'I think that about covers it, sir', [Answers for neutral]"

Table of Ted's board
response
"'What do you think about the team wall?' [PlrQuestion]'Oh, yeah, that. Hang on... In fact, a couple of items are in progress, still. I've looked them up on the UI and there are some problems with the layout. No worries, they will be done soon.[Make unfinished items familiar]' [Answers for neutral]"

Table of Markku's tests
response
"'So, there are items that have been implemented but not tested at all, is that right?' [PlrQuestion]'Well, I'm not sure. There's no way to tell, is there.', [Answers for frustrated]" 
"'Don't you do a report on test results?' [PlrQuestion]'Yes, and the tests always pass 100%', [Answers for cynical]"
"'So, what's wrong about the tests then?', [PlrQuestion]'It's just that we don't have a dedicated test team here and everything seems to go to hell at the moment we start to integrate.' [Answers for neutral]"
"Nothing more to add."
"'Anything else come to your mind about the tests?' [PlrQuestion]'Not at the moment, no', [Answers for neutral]"

This is the items rule:
say "'Anything still on the to-do list?' [PlrQuestion]'I have to run the tests again. And then there's the integration. That will be a pain in the ass, AGAIN.' [Answers for frustrated]"

Table of Ted's items
response
"'What about those unfinished tasks?' [PlrQuestion]'Don't worry, there are only the two glitches in the UI layout', [Answers for helpful]" 
"'Will the tasks still on progress be finished on time?' [PlrQuestion]'I'll make the tweaks ASAP and have these done by the end of the sprint', [Answers for helpful]"

Table of Ted's tests
response
"'What about testing the tasks in development?' [PlrQuestion]'Taken care of. I've had my changes deployed on the system running on my dev machine for two days now', [Answers for Neutral]" 
"'So you've tested everything?' [PlrQuestion]'Yeah, I've been clicking at it ever since, no problems found. Nothing more than the two layout problems related to the two unfinished tasks I have. But no problems[Make unfinished items familiar]', [Answers for Neutral]" 

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

test markkuconv with "say hello to markku / ask markku about team board / ask markku about status / ask markku about team board / ask markku about status / a tests / ask markku about tests "

test tedconv with "say hello to ted / ask ted about status / a status / ask ted about team board / ask ted about status / a tests / ask ted about tests / ask ted about unfinished items / ask ted about unfinished items "

test teduconv with "say hello to ted / ask ted about unfinished items "

Chapter 3 Research

A book is a kind of thing. Understand "book" as a book. A book has a table name called the contents. Book can be identified or unidentified. Book is usually identified.

A book has some text called U-name. The u-name of a book is usually "a book".

A book has some text called I-name. The i-name of a book is usually "a blank book with no name on the cover".

Rule for printing the name of a book when the book is unidentified: 
    say "[U-name]".

Rule for printing the name of a book when the book is identified: 
    say "[I-name]".

After examining an unidentified book:
	now the noun is identified.
	now the noun is proper-named.
	
Instead of consulting a book about a topic listed in the contents of the noun: 
    say "[reply entry][paragraph break]".

A thing has some text called printing. The printing of a thing is usually "blank".

Understand the command "read" as something new. Understand "read [something]" as reading. Reading is an action applying to one thing, requiring light. Check reading: if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead. Carry out reading: say "You read: [printing of the noun][line break]". Report reading: do nothing.    

Instead of reading a book:
	say "You don't have the time now to read the entire book. Instead, you can consult it on specific topics.".
 
Report consulting a book about: 
    say "You flip through [the noun], but find no reference to [the topic understood]." instead.
    
There is a large envelope on the empty desk. Large envelope is an openable closed container. The description of the envelope is "There's your name penned on the envelope. The envelope is sealed but you can see that the contents big enough to contain a book."

Scrum Book is an unidentified book. The description of Scrum Book is "The book is titled Software Development with Scrum. It is written by Ken Schwaber and Mike Beedle." The contents of Scrum Book is the Table of Scrum Book. The U-name of Scrum book is "a black paperback book". The I-name of the Scrum book is "Software Development with Scrum".

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

Chapter 4 Actions

Chapter 5 Effects

Chapter 6 Scenery

Section 1 Rooms

By the door is a room. "You are in the team's open office. There's a door to the corridor to the south. The open office opens to the west, north and east. The other desks are to the northwest and north and to the northeast there's a makeshift cubicle. The supply cabinet is to the east.

There's an empty desk by the door. [Team board narrative]". The empty desk is scenery in By the door. "There's an empty desk by the door. There are some cables at the back of the desk." 

By Markku's desk is a room. By Markku's desk is northwest from By the door. The description is "You are in the team's open office, by Markku's desk. [Team board narrative]". Markku is in a room called the By Markku's desk.

North end of the office is a room. "You are by the north wall in the open office. There's the desk where Johanna and Ted are located here. [Team board narrative]". North end of the office is north from a room called By the door. Ted is in north end of the office.

By Saana's desk is a room. "You are in the northeast corner of the open office. In a makeshift cubicle there's Saana's desk. [Team board narrative]". By Saana's desk is northeast from by the door.

By the board is a room. "You are by the south wall of the team's open office, west of the door. There's the marker board filled with post-its here." By the board is west from By the door.

Southeast corner of the office is a room. "You are in the southeast corner of the open office. There's a supply closet here. [Team board narrative]". Supply closet is scenery in the Southeast corner of the office. Southeast corner of the office is east from By the door.

Open office is a region. By Markku's desk, by the door, North end of office, Southeast corner of the office, by saana's desk and By the board are in the Open office. 

The team board is a backdrop. "On the west end of the south wall there's a marker board with colored post-it notes. You are unable to see the much more from here." The team board is in the open office.

Team board narrative is some text which varies. Team board narrative is "On the west end of the south wall there's a marker board."

Section 2 Directions

By Markku's desk is north from By the board.

North end of the office is east from By Markku's desk.

By Saana's desk is east from North end of office.

Southeast corner of the office is south from By Saana's desk.

Southeast corner of the office is southeast from North end of the office.

North end of the office is northeast from By the board.

test openoffice with " w / n / e / e / s / nw / sw / e"
