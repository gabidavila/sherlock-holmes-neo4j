CREATE(n:Place {name: "Carlton House"});
CREATE(n:Informant {name: "H.R. Murray"});
CREATE(n:Place {name: "Scotland Yard"});
CREATE(n:Informant {name: "Disraeli O'brian"});
CREATE(n:Place {name: "Somerset House"});
CREATE(n:Informant {name: "Edward Hall"});
CREATE(n:Informant {name: "Porky Shinwell"});
CREATE(n:Informant {name: "Fred Polock"});
CREATE(n:Informant {name: "Henry Ellis"});
CREATE(n:Informant {name: "Quintin Hogg"});
CREATE(n:Informant {name: "Mycroft Holmes"});
CREATE(n:Informant {name: "Langdale Pike"});
CREATE(n:Place {name: "Central Carriage Depot"});
CREATE(n:Place {name: "Lomax"});
CREATE(n:Informant {name: "Sherlock Holmes"});

CREATE(n:Informant {name: ""})
CREATE(n:Informant {name: ""})


CREATE(n:Place {name: "Saint Bartholomew's Hospital"})
CREATE(n:Place {name: "Old Bailey"});

MATCH (n:Informant), (m:Place)
WHERE ID(n) = 40 AND ID(m) = 52
CREATE (n)-[r:WORKS_AT]->(m)
RETURN n, m

CREATE(n:Place {name: "Office of National Archives"});
CREATE(n:Informant {name: "Inspector Lestrade"});
CREATE(n:Informant {name: "Gregson"});

MATCH (n) RETURN ID(n), n LIMIT 1000;

CREATE (n:Place {name: "Salvation Army"}) RETURN n;
CREATE (n:Person {name: "Donald Stillwalter"}) RETURN n;
CREATE (a:Address {location: "69 EC"}) RETURN a;

MATCH (n), (m)
WHERE ID(n) = 89 AND ID(m) = 20
CREATE (n)-[r:LIVES_AT]->(m)
RETURN n, m

MATCH (n), (m)
WHERE ID(n) = 33 AND ID(m) = 25
CREATE (n)-[r:WORKED_FOR]->(m)
RETURN n, m

MATCH (n) RETURN ID(n), n LIMIT 1000;


MATCH (n), (m)
WHERE ID(n) = 34 AND ID(m) = 36
CREATE (n)-[r:WORKED_FOR]->(m)
RETURN n, m

CREATE (n:Person) RETURN n;

MATCH (n), (m)
WHERE ID(n) = 87 AND ID(m) = 86
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN n, m

CREATE (n:Person {name: "Steven Piggot"}) RETURN n;
CREATE (a:Address {location: "87 WC"}) RETURN a;

CREATE (n:Person {name: "Harbuck M."}) RETURN n;
CREATE (a:Address {location: "55 SE"}) RETURN a;

MATCH (n), (m)
WHERE ID(n) = 89 AND ID(m) = 25
CREATE (n)-[r:RELATED_TO]->(m)
RETURN n, m

CREATE (n:Person {name: "Roger Thomson I", occupation: "Leader at Sipton Tea Company"}) RETURN n;

MATCH (n), (m)
WHERE ID(n) = 107 AND ID(m) = 20
CREATE (n)-[r:LIVES_AT]->(m)
RETURN n, m

MATCH (n), (m)
WHERE ID(n) = 106 AND ID(m) = 89
CREATE (n)-[r:RELATED_TO]->(m)
RETURN n, m