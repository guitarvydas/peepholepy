#	'ensure that formatted text option in draw.io is disabled everywhere'

D2J=./das2json/mac/das2json

all: peepholepy

peepholepy: peepholepy.drawio py0d.py *.ohm *.rewrite
	${D2J} peepholepy.drawio
	python3 main.py . 0D/python "test.scm" main peepholepy.drawio.json

## house-keeping

clean:
	rm -rf *.json
	rm -rf *~
	rm -rf __pycache__

install-js-requires:
	npm install yargs prompt-sync ohm-js

