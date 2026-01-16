all: index.html live.html projects.html

%.html: %.html.page template.html
	awk '/^##PAGE_CONTENT##$$/{system("cat '$<'")} {print}' template.html | grep -v '^##PAGE_CONTENT##$$' > $@
