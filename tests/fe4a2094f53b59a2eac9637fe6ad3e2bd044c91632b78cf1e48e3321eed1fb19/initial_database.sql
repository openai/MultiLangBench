CREATE VIRTUAL TABLE email USING fts3([from],[to],subject,body);
INSERT INTO email(rowid,[from],[to],subject,body) VALUES(77,'pete.davis@enron.com','pete.davis@enron.com','Start Date: 4/22/01; HourAhead hour: 3;  <CODESITE>','Start Date: 4/22/01; HourAhead hour: 3;  No ancillary schedules awarded.  
Variances detected.
Variances detected in Load schedule.

    LOG MESSAGES:

PARSING FILE -->> O:\Portland\WestDesk\California Scheduling\ISO Final 
Schedules\2001042203.txt

---- Load Schedule ----
$$$ Variance found in table tblLoads.
     Details: (Hour: 3 / Preferred:   1.92 / Final:   1.89)
  TRANS_TYPE: FINAL
  LOAD_ID: PGE4
  MKT_TYPE: 2
  TRANS_DATE: 4/22/01
  SC_ID: EPMI

');