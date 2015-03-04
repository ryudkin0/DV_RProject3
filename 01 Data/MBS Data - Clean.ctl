load data 
infile 'MBS Data - Clean.csv' "str '\r\n'"
append
into table MBS
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( ID CHAR(4000),
             LTV CHAR(4000),
             CLTV CHAR(4000),
             Orig_Bal CHAR(4000),
             Orig_Date DATE ""dd-mm-yyyy"",
             Orig_Term CHAR(4000),
             Orig_Rate CHAR(4000),
             State CHAR(4000),
             FICO CHAR(4000),
             Occupancy CHAR(4000),
             Type CHAR(4000)
           )
