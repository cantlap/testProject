#!/bin/bash


nextflow run pgscatalog/pgsc_calc \
    -profile singularity \
    --input PVDOmicsSamplesheet_pfile.csv --target_build GRCh38 \
    --pgs_id PGS000016,PGS000331,PGS000338,PGS000727 \
    -dsl2 \
    --parallel \
    --min_overlap .5 \
    --max_cpus 32 \
    --max_memory 256.GB
    


    #commenting to show edits
    