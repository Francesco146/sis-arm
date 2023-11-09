#!/bin/bash

if [ "$(basename "$PWD")" != "SIS" ]; then
    echo "Assicurati di essere nella cartella 'SIS' per eseguire lo script. Ovvero la cartella che conterrà i file BLIF e il file .bsis_history"
else
    docker build -t sis-arm ..
    docker run -it -v "$PWD/.:/home/dockeruser/SIS" -v "$PWD/.bsis_history:/home/dockeruser/.bsis_history" sis-arm /bin/bash
fi
