#!/bin/bash

projdir=/mithril/Data/NGS/projects/dunlop_insert
datadir=$projdir/run3
ref1=$projdir/refs/construct1.fa
ref2=$projdir/refs/construct2.fa


if [ $1 == find_verbose ] ; then
    mkdir -p $datadir/positions

    for i in NT278 NT296 NT297 ;
    do
	echo $i
	python ~/Code/yfan_ngs/dunlop_insert/find_insert.py \
	       -b $datadir/align/$i.sorted.bam \
	       -r $ref1 \
	       -o $datadir/positions/$i.positions.verbose.csv \
	       -v
    done
    for i in NT279 NT298 NT299 ;
    do
	echo $i
	python ~/Code/yfan_ngs/dunlop_insert/find_insert.py \
	       -b $datadir/align/$i.sorted.bam \
	       -r $ref2 \
	       -o $datadir/positions/$i.positions.verbose.csv \
	       -v
    done
	
fi

if [ $1 == find ] ; then
    mkdir -p $datadir/positions

    for i in NT278 NT296 NT297 ;
    do
	echo $i
	python ~/Code/yfan_ngs/dunlop_insert/find_insert.py \
	       -b $datadir/align/$i.sorted.bam \
	       -r $ref1 \
	       -o $datadir/positions/$i.positions.withscar.csv

    done
    for i in NT279 NT298 NT299 ;
    do
	echo $i
	python ~/Code/yfan_ngs/dunlop_insert/find_insert.py \
	       -b $datadir/align/$i.sorted.bam \
	       -r $ref2 \
	       -o $datadir/positions/$i.positions.withscar.csv
    done
	
fi


