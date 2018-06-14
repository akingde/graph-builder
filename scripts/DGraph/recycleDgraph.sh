pgrep -f "dgraph server" > /dev/null
if [ $? -eq 0 ]; then
	echo "DGrapg is running. Will kill  !"
	pgrep -f "dgraph server" | xargs kill
	rm -rf ./out
	rm -rf ./w
else
	echo "DGrapg is not running. Will leave it!"
	rm -rf ./out
	rm -rf ./w
fi
