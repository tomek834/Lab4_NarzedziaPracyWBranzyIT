#!/bin/bash


if [[ "$1" == "--date" ]]; then
    echo "dzisiaj jest: $(date)"
elif [[ "$1" == "--logs" ]]; then
    for i in $(seq 1 100); do
        filename="log$i.txt"
        echo -e "filename: $filename\nscript: $0\ndate: $(date)" > $filename
    done

else

    echo "usage: $0 --date | --logs"
fi
