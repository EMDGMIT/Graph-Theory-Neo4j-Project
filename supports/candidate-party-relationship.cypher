MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Fianna Fáil" AND party1.name = "Fianna Fáil"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Fine Gael" AND party1.name = "Fine Gael"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Labour Party" AND party1.name = "Labour Party"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Sinn Féin" AND party1.name = "Sinn Féin"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Anti-Austerity Alliance–People Before Profit" AND party1.name = "Anti-Austerity Alliance–People Before Profit"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Renua Ireland" AND party1.name = "Renua Ireland"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Social Democrats" AND party1.name = "Social Democrats"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Workers and Unemployed Action" AND party1.name = "Workers and Unemployed Action"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Green Party" AND party1.name = "Green Party"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Workers Party" AND party1.name = "Workers Party"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Direct Democracy Ireland" AND party1.name = "Direct Democracy Ireland"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Fís Nua" AND party1.name = "Fís Nua"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Communist Party Ireland" AND party1.name = "Communist Party Ireland"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Catholic Democrats" AND party1.name = "Catholic Democrats"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Independents 4 Change" AND party1.name = "Independents 4 Change"
CREATE cand1-[:MEMBER_OF]->party1;

MATCH (cand1:Candidate), (party1:Party)
WHERE cand1.party = "Irish Democratic Party" AND party1.name = "Irish Democratic Party"
CREATE cand1-[:MEMBER_OF]->party1;