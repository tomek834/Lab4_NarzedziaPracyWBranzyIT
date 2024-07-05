#!/bin/bash


if [[ "$1" == "--date" || "$1" == "-d"]]; then
    echo "dzisiaj jest: $(date)"
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then

   if [[ -n "$2" ]]; then
        num_files=$2
    else
        num_files=100
    fi

    for i in $(seq 1 $num_files); do
        filename="log$i.txt"
        echo -e "filename: $filename\nscript: $0\ndate: $(date)" > $filename
    done

elif [[ "$1" == "--help" || "$1" == "-h"]]; then
    echo "--date lub -d wyświetli dzisiejszą datę"
    echo "--logs lub -l utworzy 100 plików logX.txt"
    echo "--logs X lub -l X utworzy X plików o nazwie logX.txt"
    echo "--help lub -h wyświetli pomoc"
else


    echo "usage: $0 --date | --logs | --help"
fi
