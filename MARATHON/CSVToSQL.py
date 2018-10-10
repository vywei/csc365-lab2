#Victor Wei
#vywei@calpoly.edu


import csv
import sys

def main():
    if len(sys.argv) != 4:
        print "Usage: python convertToSQL.py <csv input file name> <table name> <sql output file name>\n **No filename Extensions**"
        return
    csvName = sys.argv[1]
    tableName = sys.argv[2]
    sqlName = sys.argv[3]
    sqlFile = open("%s.sql" % sqlName, "w")


    with open('%s.csv' % csvName) as csvfile:
        readCSV = csv.reader(csvfile, delimiter=',')
        key = next(readCSV)
        for row in readCSV:
            for i in xrange(len(row)):
                if row[i][0] == ("\'") and row[i][-1] == ("\'"):
                    row[i] = "\'" + row[i][1:-1].rstrip() + "\'"
            sqlFile.write("INSERT INTO %s (" % tableName + ', '.join(key) + ") \n    VALUES (" + ', '.join(row) + ");\n")

    sqlFile.close()

if __name__ == "__main__":
    main()
