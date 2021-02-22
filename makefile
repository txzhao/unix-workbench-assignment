TIMESTAMP = $(shell date)
LOC = $(shell cat guessinggame.sh | wc -l)

.SILENT: readme clean

readme:
	echo "# The Unix Workbench Assignment" > README.md
	echo "" >> README.md
	echo "This repo contains the coding assignment of course The Unix Workbench." >> README.md
	echo "" >> README.md
	echo "Review criteria:" >> README.md
	echo "" >> README.md
	echo "- Time when this make file was run: $(TIMESTAMP)" >> README.md
	echo "- Lines of code in guessinggame.sh: $(LOC)" >> README.md

clean:
	rm -f README.md || true
