.PHONY : clearscr fresh clean all


install: install-server install-client

install-server:
	cd server/; go get

install-client:
	rm -fr ./client/node_modules 
	cd client/; npm i

run:
	make -j 2 run-server run-client

run-server:
	cd server/; go run main.go

run-client:
	cd client/; npm run dev