{
    "props": [
        {
            name: "Melvin Tuttle",
            age: 28
        },
        {
            name: "Mrs Margaret Potter"
        },
        {
            name: "Brenda Walker"
        }, {
            name: "Sir Sidney Sloane"
        }, {
            name: "Henry Swathmore"
        }, {
            name: "Whitney Cartwright"
        }, {
            name: "Miss spring"
        }, {
            name: "Emmet Price"
        }, {
            name: "Harold Diggs"
        }
    ]
}


CREATE (n:Person {
            name: "Harold Diggs"
        })

CREATE (n:Address {
            location: "29 WC"
        })

CREATE (n:Place {name: "Sloane, Seathmore and Catwright"}), (m:Address { location: "29 WC"})

MATCH (n:Person), (m:Place)
WHERE n.name = "Miss Spring" AND m.name = "Lydell's Bakery"
CREATE (n)-[r:BOUGHT]->(m)
RETURN type(r)

MATCH (n:Person), (m:Place)
WHERE n.name = "Melvin Tuttle" AND m.name = "Lydell's Bakery"
CREATE (n)-[r:ATE]->(m)
RETURN type(r)

MATCH (n:Place), (m:Address)
WHERE n.name = "Sloane, Swathmore and Cartwright" AND m.location = "29 WC"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN type(r)

MATCH (n:Person), (m:Place)
WHERE n.name = "Miss Spring" AND m.name = "Sloane, Seathmore and Catwright"
CREATE (n)-[r:WORKS_AT]->(m)
RETURN type(r)

MATCH (n:Person), (m:Place)
WHERE n.name = "Harold Diggs" AND m.name = "Sloane, Swathmore and Cartwright"
CREATE (n)-[r:WORKS_AT]->(m)
RETURN type(r)

MATCH (n:Person), (m:Address)
WHERE m.location = "85 EC" AND n.name = "Emmet Price"
CREATE (n)-[r:LIVES_AT]->(m)
RETURN type(r)

MATCH (n:Person { name: 'Miss Spring' })-[r:KNOWS]->()
 DELETE r

CREATE (n:Address {
            location: "8 WC"
        })

MATCH (n:Person), (m:Address)
WHERE m.location = "19 WC" AND n.name = "Romanos"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN type(r)

MATCH (n:Place), (m:Address)
WHERE m.location = "19 WC" AND n.name = "Romanos"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN type(r)

MATCH (n:Person), (m:Address)
WHERE m.location = "29 WC" AND n.name = "Dr. Jerrold Mason"
CREATE (n)-[r:WORKS_AT]->(m)
RETURN type(r)

MATCH (n:Place), (m:Person)
WHERE n.name = "Romanos" AND m.name = "Whitney Cartwright"
CREATE (n)-[r:ATE]->(m)
RETURN n, m



MATCH (n:Person) WHERE n.name = "Henry Seathmore" SET n.name = "Henry Swathmore"
MATCH (n:Person) WHERE n.name = "Whitney Catwright" SET n.name = "Whitney Cartwright"


MATCH (n:Person) WHERE n.name = "Henry Swathmore" SET n.position = "Senior Partner", n.department = "Head of Trust"
MATCH (n:Person) WHERE n.name = "Emmet Price" SET n.position = "Lift Operator"
MATCH (n:Person) WHERE n.name = "Brenda Walker" SET n.position = "Typist"
MATCH (n:Person) WHERE n.name = "Mrs Margaret Potter" SET n.position = "Senior Executive", n.timeEmployment = 22
MATCH (n:Person) WHERE n.name = "Whitney Cartwright" SET n.position = "Senior Partner", n.department = "Head of Contracts"
MATCH (n:Person) WHERE n.name = "Sir Sidney Sloane" SET n.position = "Senior Partner", n.department = "Founder"
MATCH (n:Person) WHERE n.name = "Miss Spring" SET n.position = "Executive Secretary", n.timeEmployment = 5
MATCH (n:Person) WHERE n.name = "Melvin Tuttle" SET n.position = "Junior Partner", n.timeEmployment = 2.5

MATCH (melvin:Person), (other:Address)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Miss Spring"
CREATE (n)-[r:KNOWS]->(m)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Mrs Margaret Potter"
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Brenda Walker"
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Sir Sidney Sloane"
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Henry Swathmore"
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Dr. Jerold Mason"
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Emmet Price"
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)


MATCH (m:Place) WHERE m.name = "Sloane, Seathmore and Catwright" SET m.name = "Sloane, Swathmore and Cartwright"

MATCH (n:Person {name: "Mrs Cartwright"}), (m:Person {name: "Melvin Tuttle"}) CREATE (m)-[r:DATED]->(n) RETURN m,n

CREATE (n:Place {name: "Grayson's Nursery"}), (m:Address { location: "50 EC"})

MATCH (n:Person), (m:Place)
WHERE n.name = "Harold Diggs" AND m.name = "Grayson's Nursery"
CREATE (n)-[r:BOUGHT]->(m)
RETURN type(r)

CREATE (n:Place {name: "Ambrecht & Co"})

MATCH (n:Place), (m:Address)
WHERE n.name = "Ambrecht & Co" AND m.location = "32 NW"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Charles Goode" AND other.name = "Emily Goode"
CREATE (melvin)-[r:LIVES_WITH]->(other)
RETURN type(r)

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND other.name = "Virginia Monroe"
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)


MATCH (n:Person), (m:Address)
WHERE n.name = "Emily Goode" AND m.location = "25 SW"
CREATE (n)-[r:LIVES_AT]->(m)
RETURN type(r)

MATCH (n:Person), (m:Address)
WHERE n.name = "Virginia Monroe" AND m.location = "43 SW"
CREATE (n)-[r:LIVES_AT]->(m)
RETURN type(r)

CREATE (n:Person {name: "Aubrey Metcalf"}), (m:Person {name: "George Hamilton"}), (o:Person {name: "Cedrick Livingston"}), (p:Person {name: "Richard Mainhart"}), (q:Person {name: "Banks Featherstone"})
CREATE (n:Place {name: "Bank of England"}), (m:Place {name: "British Museum"}) return n

MATCH (n:Place), (m:Address)
WHERE n.name = "Sloane, Swathmore and Cartwright" AND m.location = "29 WC"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN n, m, type(r)


MATCH (n:Place), (m:Address)
WHERE n.name = "British Museum" AND m.location = "38 WC"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN n, m, type(r)

MATCH (n:Place), (m:Address)
WHERE ID(n) = 108 AND m.location = "38 WC"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN n, m, type(r)

MATCH (n), (m)
WHERE ID(n) = 1 AND ID(m) = 108
CREATE (n)-[r:REPRESENTS]->(m)
RETURN n, m, type(r)

MATCH (n), (m)
WHERE ID(n) = 1 AND ID(m) = 125
CREATE (n)-[r:REPRESENTS]->(m)
RETURN n, m, type(r)

CREATE (n:Address {location: "44 SW"})

MATCH (n), (m)
WHERE ID(n) = 125 AND ID(m) = 96
CREATE (n)-[r:LIVES_AT]->(m)
RETURN n, m, type(r)

CREATE (n:Address {location: "50 SW"}) RETURN ID(n), n //93

MATCH (n), (m)
WHERE ID(n) = 126 AND ID(m) = 110
CREATE (n)-[r:LIVES_AT]->(m)
RETURN n, m, type(r)

MATCH (n), (m)
WHERE ID(n) = 127 AND ID(m) = 93
CREATE (n)-[r:LIVES_AT]->(m)
RETURN n, m, type(r)

CREATE (n:Address {location: "51 EC"}) RETURN ID(n), n //111

MATCH (n), (m)
WHERE ID(n) = 128 AND ID(m) = 111
CREATE (n)-[r:LIVES_AT]->(m)
RETURN n, m, type(r)

//24 sw

CREATE (n:Address {location: "24 SW"}) RETURN ID(n), n //94

MATCH (n), (m)
WHERE ID(n) = 129 AND ID(m) = 94
CREATE (n)-[r:LIVES_AT]->(m)
RETURN n, m, type(r)

MATCH (n:Place), (m:Address)
WHERE n.name = "Bank of England" AND m.location = "23 EC"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN n, m, type(r)

//95
CREATE (n:Person {name: "August Heathcliff"}) RETURN ID(n), n 

//
CREATE (n:Address {location: "24 SW"}) RETURN ID(n), n 

//96
CREATE (n:Place {name: "Bell's Bath"}) RETURN ID(n), n 

//97
CREATE (n:Address {location: "11 EC"}) RETURN ID(n), n 

MATCH (n:Place), (m:Address)
WHERE n.name = "Bell's Bath" AND m.location = "11 EC"
CREATE (n)-[r:LOCATED_AT]->(m)
RETURN n, m

MATCH (n:Person), (m:Place)
WHERE m.name = "Bell's Bath" AND ID(n) = 0
CREATE (n)-[r:MEMBER_OF]->(m)
RETURN n, m

MATCH (n:Person), (m:Place)
WHERE m.name = "Bell's Bath" AND ID(n) = 127
CREATE (n)-[r:MEMBER_OF]->(m)
RETURN n, m


//DELETE DUPLICATE RELATIONSHIPS
start r=relationship(*) 
match (s)-[r]->(e)
with s,e,type(r) as typ, tail(collect(r)) as coll 
foreach(x in coll | delete x)


MATCH (n:Person), (m:Place)
WHERE m.name = "Romanos" AND ID(n) = 0
CREATE (n)-[r:ATE]->(m)
RETURN n, m

MATCH (melvin:Person), (other:Person)
WHERE melvin.name = "Melvin Tuttle" AND ID(other) = 127
CREATE (melvin)-[r:KNOWS]->(other)
RETURN type(r)

// PERSON <-> PLACE Relationship
MATCH (r:Person), (m:Room)
WHERE ID(r) = 155 AND ID(m) = 103
CREATE (r)-[k:CURRENTLY_AT]->(m)
RETURN r, m, type(k)

// Create Node
CREATE (n:Person {
            name: "",
            function: "",
            occupation: ""
        })ñ
        RETURN n

// PERSON <-> PLACE Relationship
MATCH (r:Informant), (m:Room)
WHERE ID(r) = 120 AND ID(m) = 103
CREATE (r)-[k:PATROLS]->(m)
RETURN r, m, type(k)