#This is the makefile for worksheet 10 to complete the specified tasks

#first, trimmed.csv created by selecting id, age, and score columns via cut from raw.csv
trimmed.csv: raw.csv
	 cut -d',' -f1,3,5 raw.csv > trimmed.csv

#second, we need to discard rows with missing age or score -> clean.csv via awk (NOT other empty rows aka id only these two)
clean.csv: trimmed.csv
	awk -F',' 'NR==1 || ($$2 != "" && $$3 != "")' trimmed.csv > clean.csv

#finally, delete all intermediate files (assuming all files made in process so trimmed/clean)
clean:
	rm -f trimmed.csv clean.csv

