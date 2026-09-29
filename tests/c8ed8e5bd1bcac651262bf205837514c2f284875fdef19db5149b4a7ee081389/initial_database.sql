CREATE VIRTUAL TABLE email USING fts3([from],[to],subject,body);
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(59,'marie.heard@enron.com','ehamilton@fna.com','ISDA Master Agreement','Erin:

Pursuant to your request, attached are the Schedule to the ISDA Master Agreement, together with Paragraph 13 to the ISDA Credit Support Annex.  Please let me know if you need anything else.  We look forward to hearing your comments.

Marie

Marie Heard
Senior Legal Specialist
Enron North America Corp.
Phone:  (713) 853-3907
Fax:  (713) 646-3490
marie.heard@enron.com

				 ');