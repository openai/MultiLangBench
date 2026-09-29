CREATE VIRTUAL TABLE email USING fts3([from],[to],subject,body);
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(18,'chris.germany@enron.com','ingrid.immer@williams.com','Re: About St Pauls','Sounds good to me.  I bet this is next to the Warick?? Hotel.




"Immer, Ingrid" <Ingrid.Immer@Williams.com> on 12/21/2000 11:48:47 AM
To: "''chris.germany@enron.com''" <chris.germany@enron.com>
cc:  
Subject: About St Pauls




 <<About St Pauls.url>>  
? 
?http://www.stpaulshouston.org/about.html 

Chris, 

I like the looks of this place.? What do you think about going here Christmas 
eve?? They have an 11:00 a.m. service and a candlelight service at 5:00 p.m., 
among others.

Let me know.?? ii 

 - About St Pauls.url

');