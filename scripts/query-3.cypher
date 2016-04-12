MATCH 
    (can:Candidate)
RETURN 
   min(can.age) AS Youngest_Candidate, can.constituency AS Constituency