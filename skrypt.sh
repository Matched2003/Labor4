#!/bin/bash

case "$1" in
	--date)
		echo "Dzisiaj jest: $(date)"
		;;
	*)
		echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
		;;
esac
