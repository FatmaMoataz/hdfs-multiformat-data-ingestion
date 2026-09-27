# !/bin/bash
# sample script to show file info, header, first 5 rows and row count of a csv file for large csv files
echo "=== File Info ==="
ls -lh OTE_A.csv
du -h OTE_A.csv
file OTE_A.csv

echo "=== Header ==="
head -n 1 OTE_A.csv

echo "=== First 5 Rows ==="
head -n 6 OTE_A.csv

echo "=== Row Count ==="
wc -l OTE_A.csv
