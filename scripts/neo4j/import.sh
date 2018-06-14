#!/bin/sh
echo "neo4j import"
pgrep -f "neo4j" | xargs kill

rm -rf /Users/raph/neo4j-community-3.3.2/data/databases

echo "/Users/raph/neo4j-community-3.3.2/bin/neo4j-admin import $@"
/Users/raph/neo4j-community-3.3.2/bin/neo4j-admin import $@

/Users/raph/neo4j-community-3.3.2/bin/neo4j start
