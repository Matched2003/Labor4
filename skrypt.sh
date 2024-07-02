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
	--help|-h)
		echo "Dostępne opcje:"
		echo "--date, -d"
		echo "--logs [number], -l [number]"
		echo "--help, -h"
		;;
	*)
		echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
		;;
esac
