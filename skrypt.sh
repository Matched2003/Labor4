#!/bin/bash

case "$1" in
	--date|-d)
		echo "Dzisiaj jest: $(date)"
		;;
	--logs|-l)
		num_logs=${2:-100}
		mkdir -p logs
		for i in $(seq 1 $num_logs); do
			echo -e "log${i}.txt\nskrypt.sh\n$(date)" > logs/log${i}.txt
		done
		;;
	--error|-e)
		num_errors=${2:-100}
		mkdir -p errors
		for i in $(seq 1 $num_errors); do
			mkdir -p errors/error${i}
			echo -e "error${i}.txt\nskrypt.sh\n$(date)" > errors/error${i}/error${i}.txt
		done
		;;
	--init)
		git clone https://github.com/Matched2003/Labor4
		export PATH=$PATH:$(pwd)/Labor4
		;;
	--help|-h)
		echo "Dostępne opcje:"
		echo "--date, -d"
		echo "--logs [number], -l [number]"
		echo "--error [number], -e [number]"
		echo "--init"
		echo "--help, -h"
		;;
	*)
		echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
		;;
esac
