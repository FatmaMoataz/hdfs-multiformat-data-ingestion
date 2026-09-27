# HDFS Commands

## Create HDFS Directories

```bash
hdfs dfs -mkdir -p dataops-project/structured/csv
hdfs dfs -mkdir -p dataops-project/semi-structured/json
hdfs dfs -mkdir -p dataops-project/semi-structured/xml
hdfs dfs -mkdir -p dataops-project/unstructured/images
```

## Upload CSV
```bash
hdfs dfs -put /tmp/OTE_A.csv dataops-project/structured/csv/
```
## Upload JSON
```bash
hdfs dfs -put /tmp/RL_002.json dataops-project/semi-structured/json/
```
## Verify Uploaded Files
```bash
hdfs dfs -ls -h dataops-project/structured/csv
hdfs dfs -ls -h dataops-project/semi-structured/json
```
## Inspect HDFS Files
```bash
hdfs dfs -head dataops-project/structured/csv/OTE_A.csv
hdfs dfs -tail dataops-project/structured/csv/OTE_A.csv

hdfs dfs -head dataops-project/semi-structured/json/RL_002.json
hdfs dfs -tail dataops-project/semi-structured/json/RL_002.json
```
## Extract Samples
```bash
hdfs dfs -head dataops-project/structured/csv/OTE_A.csv > csv_sample.txt

hdfs dfs -head dataops-project/semi-structured/json/RL_002.json > json_sample.txt
```