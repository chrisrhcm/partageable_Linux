all: test

test: install
	echo "entrer le composant voulu ainsi que 2 entiers sous la forme : Composantx entier1 entier2"; \
	read reponse; \
	cd bin; \
	LD_LIBRARY_PATH=.; \
       	./main $${reponse}; \

install:
	cd main && ${MAKE} install
clean:
	cd main && ${MAKE} clean
