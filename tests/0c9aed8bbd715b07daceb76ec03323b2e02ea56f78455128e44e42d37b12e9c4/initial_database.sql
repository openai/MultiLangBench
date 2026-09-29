CREATE VIRTUAL TABLE email USING fts3([from],[to],subject,body);
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(1,'','','','com');
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(2,'','','','enron');
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(3,'','','','questar');
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(29,'matt.smith@enron.com','yan.wang@enron.com','Report Formats','Yan,

The merged reports look great.  I believe the only orientation changes are to 
"unmerge" the following six reports:  

31 Keystone Receipts
15 Questar Pipeline
40 Rockies Production
22 West_2
23 West_3
25 CIG_WIC

The orientation of the individual reports should be correct.  Thanks.

Mat

PS.  Just a reminder to add the "*" by the title of calculated points.');