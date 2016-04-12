MATCH 
    (c:Constituency)
RETURN 
    avg(c.population) / avg(c.seats) AS AveragePeoplePerDailSeat