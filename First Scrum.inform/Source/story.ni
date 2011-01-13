"First Scrum" by Antti Kirjavainen

Include Epistemology by Eric Eve.

Include Conversation Package by Eric Eve.

[This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. http://creativecommons.org/licenses/by-nc-sa/3.0/]

Chapter 1 - Subjects and Kinds


Section 1 - Subjects

Scrum is a subject. 

A thing can be wellknown or lesserknown. a thing is usually wellknown.

Scrum Master is a subject. 

Understand "SM" as Scrum Master.

Scrum Master's duties is a subject.

Understand "SM's responsibilities" or "Scrum Master's responsibilities" as Scrum Master's duties.

Product Owner is a lesserknown subject. 

Understand "PO" as Product Owner.

[Understand "ask [someone] about [any unknown thing]" as blindquizzing it about.

Blindquizzing it about is an action applying to two visible things.

The specification of the blindquizzing it about action is "This action responds to commands like ASK FRED ABOUT BOAT, where BOAT is an unknown thing defined in the game, rather than a topic."

[The block asking about something unknown rule is not listed in the check quizzing it about rulebook.]

Report blindquizzing someone about something (this is the block blindquizzing rule):
  say "You are not really familiar with [second noun], so you don't know what to ask. Maybe you get more acquinted with the subject of [second noun] somehow?"]

After quizzing someone about something lesserknown,
  say "You are not really familiar with [second noun], so you don't know what to ask. Maybe you get more acquinted with the subject of [second noun] somehow?"

[Check blindquizzing someone about something unknown (this is the block asking about something unknown mark 2 rule):
  say "You are not really familiar with [second noun], so you don't know what to ask. Maybe you get more acquinted with the subject of [second noun] somehow?";
  stop the action.]


Section 2 - Kinds of Persons

A Team member is a kind of person.
	Team member has some text called Name. Name is usually "That guy".
	Team member has some text called The Product owner knowledge. The Product owner knowledge is usually "[one of]That would be Hank. His job is to tell us what to do[or]He can be a little annoying at times, Hank[or]Hank's office is on the 8th floor[stopping]."
	Team member has some text called The Scrum master knowledge. The Scrum master knowledge is usually "[one of]That's your post now, isn't it?[or]Helen was the one before you, but no she has moved on[or]Yeah, you'd better get started on your work, shouldn't you?[stopping]".

	After saying hello to a Team member when the greeting type is explicit:
	say "'Greetings, [Name]' you say.
	
	'Hello, sir!' [Name] answers."
	After saying hello to a Team member when the greeting type is implicit:
	say "[Name] looks up when you speak."	
	After saying goodbye to a Team member when the farewell type is explicit:
	say "'Well you take care now, [Name]!' you exclaim.
	
	'Goodbye, sir!' [Name] answers."
	After saying goodbye to a Team member when the farewell type is implicit:
	say "[Name] nods vaguely and goes back to work."	
	
	Team member has some text called idunnoresponse. Idunnoresponse is usually "[one of]'I dunno much about that'  [Name] says.[or]'Whazzat?'  [Name] asks.[or]'How do you mean?'  [Name] asks.[purely at random]".
	default ask response for Team member: say "[idunnoresponse]".

	[default ask response for Team member when the second noun is unknown:
	say "You are not familiar with this subject".]
	
	default ask response for Team member when asked about Team member:
	say "'What about me, sir?' [Name] asks, puzzled."
	
	default ask response for Team member when asked about Scrum Master:
	say "[Name] says: '[Scrum master knowledge]'".

	default ask response for Team member when asked about Product Owner:
	say "[Name] says: '[Product Owner knowledge]'".

	default ask response for Team member when asked about Scrum Master's duties:
	say "'The responsibilities of a SM? Shouldn't you be the one who knows about that?', [Name] asks, half smiling."

Chapter 2 - The Team

The Team room is a room.
		
Ted is a male team member in the Team room. Name of Ted is "Ted".


