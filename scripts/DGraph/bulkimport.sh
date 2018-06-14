#!/bin/sh
echo "bulk import"
pgrep -f "dgraph server" | xargs kill

rm -rf ./out

echo "/usr/local/bin/dgraph bulk -r $1 -s $2  -z localhost:7081"
/usr/local/bin/dgraph bulk -r $1 -s $2 -z localhost:7081

/usr/local/bin/dgraph server --memory_mb 2048 --zero localhost:7081 -p out/0/p