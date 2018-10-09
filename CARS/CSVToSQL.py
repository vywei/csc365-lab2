import csv
import sys

def main():
    if len(sys.argv) != 3:
        print "Usage: python convertToSQL.py <csv input file name> <sql output file name>\n **No filename Extensions**"
    csvName = sys.argv[1]
    sqlName = sys.argv[2]
    sqlFile = open("%s.sql" % sqlName, "w")


    with open('%s.csv' % csvName) as csvfile:
        readCSV = csv.reader(csvfile, delimiter=',')
        key = next(readCSV)
        for row in readCSV:
            sqlFile.write("INSERT INTO %s (" % sqlName + ', '.join(key) + ") \n    VALUES (" + ', '.join(row) + ");\n")

    sqlFile.close()

if __name__ == "__main__":
    main()
