

default:
	cabal install
	.cabal-sandbox/bin/gyoshil

full:
	cabal install
	rm -f html/*
	.cabal-sandbox/bin/gyoshil
	cp -r html/* ../gyoshil.github.io

deploy: full
	git commit -am 'autocommit' && \
        git push && \
	cd ../gyoshil.github.io && \
	git pull && \
	git add . && \
	git commit -am 'autocommit' && \
	git push && \
	cd ../Gyoshil-web
	
	
