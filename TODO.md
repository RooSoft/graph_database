### Import nodes
```cypher
LOAD CSV WITH HEADERS FROM 'file:///lightning-graph.csv' AS node FIELDTERMINATOR ','
CREATE (:node {
pub_key: node.pub_key,
alias: node.alias,
color: node.color
});
```

### Add node index

```cypher
CREATE BTREE INDEX node_id IF NOT EXISTS
FOR n:node)
ON (n.pub_key);
```

### Import edges
```cypher
LOAD CSV WITH HEADERS FROM 'file:///edges.csv' AS edge FIELDTERMINATOR ','
MATCH (n1:node {pub_key: edge.node1_pub})
MATCH (n2:node {pub_key: edge.node2_pub})
MERGE (n1)-[:CONNECTED_TO]->(n2)
RETURN count(n1);
```