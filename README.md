# Irish Constituencies Neo4j Database
###### Éanna MacConough, G00314860

## Introduction
This project is about representing data about the 2016 Irish General Election in a graph database using 
Neo4J. The database stores information on the constituencies in Ireland, as well as all of the Candidates 
running for election and their Parties.

The aim of this project, aside from storing the information about the General Election, is also to explore
some interesting queries that can be created using the data in the database.

## Database
At first, I searched the internet and started collecting and storing data in Notepad++. I used websites 
such as Wikipedia and TheJournal.ie (see References below). As I obtained the information, I edited the 
text files to format the data into Cypher statements so I could add the data into the Neo4j Database.

The following is the order in which I created and implemented my information: 
- The Parties and Constituencies files first.
- The massive Candidates file.
- Lastly, the Relationships cypher scripts (Candidates-Constituencies and Candidates-Parties) to set up 
	the relationships.

### Graph Layout
The graph database is laid out as follows:

There are three different type of Nodes and two different type of Relationships.

(cand1:Candidate:Female {name: "Adrienne Wallace", age:25, constituency: "Carlow-Kilkenny", party: "Anti-Austerity Alliance–People Before Profit"})
**Candidate** is the first Node type, which has a tag, cand(number), the label Candidate, a sub-label for the Candidate's gender, and the following properties:
Property | Description
| --- | --- |
name	|	the candidate's name
age		|	the candidate's age
constituency	|	the candidate's constituency
party	|	the name of the party they are a member of

(constit1:Constituency {name: 'Carlow-Kilkenny', seats:5, population:145659, quota:11669})
**Constituency** is the second Node type, which has a tag, constit(number), the label Constituency and the following properties:
Property | Description
| --- | --- |
name	|	the name of the constituency
seats	|	the number of seats available for TDs from that constituency
population	|	the number of people allowed to vote within the constituency
quota	|	the number of votes a candidate needs to get a seat in government

(party1:Party {name: "Fianna Fáil", founded:1926}),	
**Party** is the third type of Node, which has a tag, party(number), the label Party and the following properties:
Property | Description
| --- | --- |
name	|	the full name of the party
founded		|	the year in which the party was officially established

CREATE cand1-[:RUNS_IN]->constit1;
**RUNS_IN** is the first type of Relationship, which connects the Candidate and Constituency nodes.
Both 'cand1' and 'constit1' reference the tags of the Candidate and Constitution nodes respectively which 
are being called to establish a relationship. The 'constituency' property in Candidate and the 'name' 
property in Constituency is used to create the relationship between the Candidate and Constituency nodes.

CREATE cand1-[:MEMBER_OF]->party1;
**MEMBER_OF** is the second type of Relationship, which connects the Candidate and Party nodes.
Both 'cand1' and 'party1' reference the tags of the Candidate and Party nodes respectively which are being 
called to establish a relationship. The 'party' property in Candidate and the 'name' property in Party is 
used to create the relationship between the Candidate and Party nodes.

## Queries

#### Find the average quota to obtain a seat in the Dáil
This query takes the average of all the instances of properties quota from the Constituency node and 
returns the overall average.
```cypher
MATCH 
    (con:Constituency)
RETURN 
    avg(con.quota) AS AverageQuotaForDailSeat
```

#### Finding the Average number of people represented by each Dáil seat
This query takes the average of all the instances of properties population and seats from the Constituency 
node and returns the overall average. We then divide the two results by each other the get the average 
number of people per Dáil seat. This number is slightly below what the actual average should be because
the population number for each Constituency only represents those eligible to vote.
```cypher
MATCH 
    (con:Constituency)
RETURN 
    avg(con.population) / avg(con.seats) AS AveragePeoplePerDailSeat
```
	
#### Youngest Candidate per Constituency
This query retrieves the age of youngest candidate running in each Constituency
```cypher
MATCH 
    (can:Candidate)
RETURN 
   min(can.age) AS Youngest_Candidate, can.constituency AS Constituency
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [TheJournal.ie/election-2016](http://www.thejournal.ie/election-2016/), information on all candidates running in the 2016 election.
3. [Wikipedia](https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland/), general information on political parties in the Republic of Ireland.