# HDFS Multi-Format Data Ingestion & Verification Pipeline

## Overview

This project demonstrates a multi-format data ingestion and verification workflow using Linux and Apache Hadoop HDFS.

The project focuses on acquiring large datasets, inspecting them locally, staging them for HDFS ingestion, verifying uploaded data, and extracting samples for validation.

## Architecture

```text
Data Sources
     |
     v
Local Storage
     |
     v
Data Inspection
     |
     v
Shared Staging (/tmp)
     |
     v
Apache Hadoop HDFS
     |
     v
HDFS Verification
     |
     v
Sample Extraction
```

## Data Formats 

| Data Type       | Format       | Dataset     | Approx. Size | Status    |
| --------------- | ------------ | ----------- | -----------: | --------- |
| Structured      | CSV          | OTE_A.csv   |       577 MB | Completed |
| Semi-structured | JSON         | RL_002.json |       477 MB | Completed |
| Semi-structured | XML          | TBD         |      ≥500 MB | Planned   |
| Unstructured    | Images/Media | TBD         |      ≥500 MB | Planned   |

## Technologies

- Apache Hadoop HDFS
- Linux
- Bash / Linux CLI
- CSV
- JSON
- XML

## Project Workflow

For each dataset, the workflow includes:

- Dataset acquisition
- Local file inspection
- File size validation
- Shared staging through /tmp
- HDFS directory creation
- HDFS ingestion
- HDFS file-size verification
- HDFS content verification
- Sample extraction

## HDFS Directory Structure

dataops-project/
    ├── structured/
    │    └── csv/
    │    └── OTE_A.csv
    │
    ├── semi-structured/
    │   ├── json/
    │   │   └── RL_002.json
    │   │
    │   └── xml/
    │
    └── unstructured/
        └── images/

# Completed Datasets
## Structured - CSV

- Dataset:

OTE_A.csv

- Approximate local size:

577 MB

- HDFS size:

576.1 MB

- HDFS path:

dataops-project/structured/csv/OTE_A.csv

## Semi-Structured - JSON

- Dataset:

RL_002.json

- Approximate local size:

477 MB

- HDFS size:

476.7 MB

- HDFS path:

dataops-project/semi-structured/json/RL_002.json

# Example HDFS Commands

## Create directories
```
hdfs dfs -mkdir -p dataops-project/structured/csv
hdfs dfs -mkdir -p dataops-project/semi-structured/json
hdfs dfs -mkdir -p dataops-project/semi-structured/xml
hdfs dfs -mkdir -p dataops-project/unstructured/images
```
## Upload files
```
hdfs dfs -put /tmp/OTE_A.csv dataops-project/structured/csv/
hdfs dfs -put /tmp/RL_002.json dataops-project/semi-structured/json/
```
## Verify files
```
hdfs dfs -ls -h dataops-project/structured/csv
hdfs dfs -ls -h dataops-project/semi-structured/json
```
## Inspect HDFS data
```
hdfs dfs -head <file-path>
hdfs dfs -tail <file-path>
```
## Extract a sample
```
hdfs dfs -head <file-path> > sample.txt
```
## Dataset Sources
The project uses publicly available datasets. Large raw datasets are stored separately from this GitHub repository to avoid committing large binary/data files.
