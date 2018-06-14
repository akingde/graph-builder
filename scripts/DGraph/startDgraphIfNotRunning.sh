ps -ef | grep "dgraph server" > /dev/null
if [ $? -eq 0 ]; then
	echo "DGrapg is running. Will skip !!!"
else
	echo "DGrapg is not running. Will start it!"
	rm -rf ./out
	rm -rf ./w
	
	/usr/local/bin/dgraph server --memory_mb 2048 --zero localhost:7081 -p out/0/p
fi