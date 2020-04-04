pdf:
	pandoc --pdf-engine=xelatex -o hasil/buku-apache-spark--mti-stmik-akakom.pdf --toc --from markdown --template eisvogel --listings --top-level-division=chapter isi/*
