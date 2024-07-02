#!/bin/bash

case "$1" in
	--date)
		echo "Dzisiaj jest: $(date)"
		;;
	--logs)
		num_logs=${2:-100}
		mkdir -p logs
		for i in $(seq 1 $num_logs); do
			echo -e "log${i}.txt\nskrypt.sh\n$(date)" > logs/log${i}.txt
		done
		;;
	--help)
		echo "Dostępne opcje:"
		echo "--date"
		echo "--logs [number]"
		echo "--help"
		;;
	*)
		echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
		;;
esac
