#!/bin/bash


if [[ "$1" == "--date" ]]; then
    echo "dzisiaj jest: $(date)"
elif [[ "$1" == "--logs" ]]; then

   if [[ -n "$2" ]]; then
        num_files=$2
    else
        num_files=100
    fi

    for i in $(seq 1 $num_files); do
        filename="log$i.txt"
        echo -e "filename: $filename\nscript: $0\ndate: $(date)" > $filename
    done

else

    echo "usage: $0 --date | --logs"
fi
