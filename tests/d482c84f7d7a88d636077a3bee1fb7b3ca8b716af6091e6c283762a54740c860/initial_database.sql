CREATE VIRTUAL TABLE email USING fts3([from],[to],subject,body);
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(32,'david.forster@enron.com','eol.wide@enron.com','Change to Stack Manager','Effective immediately, there is a change to the Stack Manager which will 
affect any Inactive Child.

An inactive Child with links to Parent products will not have their 
calculated prices updated until the Child product is Activated.

When the Child Product is activated, the price will be recalculated and 
updated BEFORE it is displayed on the web.

This means that if you are inputting a basis price on a Child product, you 
will not see the final, calculated price until you Activate the product, at 
which time the customer will also see it.

If you have any questions, please contact the Help Desk on:

Americas: 713 853 4357
Europe: + 44 (0) 20 7783 7783
Asia/Australia: +61 2 9229 2300

Dave');