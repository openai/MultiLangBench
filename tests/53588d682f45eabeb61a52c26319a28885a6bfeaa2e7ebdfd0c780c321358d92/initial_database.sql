CREATE VIRTUAL TABLE email USING fts3([from],[to],subject,body);
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(20,'gascontrol@aglresources.com','dscott4@enron.com, lcampbel@enron.com','Alert Posted 10:00 AM November 20,2000: E-GAS Request Reminder','Alert Posted 10:00 AM November 20,2000: E-GAS Request Reminder
As discussed in the Winter Operations Meeting on Sept.29,2000, 
E-Gas(Emergency Gas) will not be offered this winter as a service from AGLC.  
Marketers and Poolers can receive gas via Peaking and IBSS nominations(daisy 
chain) from other marketers up to the 6 p.m. Same Day 2 nomination cycle.
');