# shotgun data processing
This repository contains scripts for intial data processing of shotgun sequenced DNA libraries.
Step 1: Use fastp to remove adapters, read filtering by length and get statistics of sequence libraries.
Step 2: use SGA to remove exact duplicates and low complexity reads.
Step 3: Use Prinseq++ to trim Poly A/t head and tails.
