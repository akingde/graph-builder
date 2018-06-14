taskkill /FI "WINDOWTITLE eq houseMember" /F

7z x ../data/housedb.7z -o"../data/" -y

start "houseMember" "tgdb.exe" -s -c ./tgdb.conf