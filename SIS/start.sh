#!/bin/bash

function container_exists() {
    docker inspect -f '{{.State.Running}}' sis-arm 2>/dev/null || echo "false"
}

if [ "$(basename "$PWD")" != "SIS" ]; then
    echo "Assicurati di essere nella cartella 'SIS' per eseguire lo script. Ovvero la cartella che conterrà i file BLIF e il file .bsis_history"
else
    docker build -t sis-arm ..
    if [ "$(container_exists)" != "false" ]; then
        docker run -it --name sis-arm -v "$PWD/.:/home/dockeruser/SIS" -v "$PWD/.bsis_history:/home/dockeruser/.bsis_history" sis-arm /bin/bash
    else
        docker start -i sis-arm
    fi
fi

