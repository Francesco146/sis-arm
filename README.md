
# SIS 1.3.6 su Mac con processore arm64 (M1 e superiori) utilizzando Docker

## Prerequisiti

- Mac con processore arm64 (ad esempio, MacBook Air o MacBook Pro)
- Connessione Internet
- Docker Apple Silicon
  - [Link per il download](https://desktop.docker.com/mac/main/arm64/Docker.dmg)

## Istruzioni

1. **Installazione di Docker**
   Scaricare Docker Apple Silicon utilizzando il link sopra e completare l'installazione.

2. **Preparazione dell'ambiente di lavoro**
   - Aprire il terminale.
   - Navigare fino al desktop e creare una nuova cartella chiamata "SIS".
   - Creare un file chiamato ".bsis_history" all'interno della cartella "SIS" usando il comando `touch .bsis_history`.

3. **Configurazione di Docker**
   - Scaricare il file "Dockerfile" allegato alla guida e posizionarlo fuori dalla cartella "SIS".
   - Navigare nel terminale fino alla posizione del file Dockerfile e eseguire il comando:

     ```bash
     docker build . -t sis
     ```

4. **Avvio dell'ambiente di sviluppo**
   - Assicurarsi che Docker sia avviato.
   - Navigare nel terminale fino alla cartella "SIS" e eseguire il comando:

     ```bash
     docker run -it -v $PWD/.:/home/dockeruser/esercizio-sis -v $PWD/.bsis_history:/home/dockeruser/.bsis_history sis /bin/bash
     ```

   - Nota: assicurarsi che Docker sia in esecuzione durante questo processo.

5. **Utilizzo di SIS**
   Una volta all'interno dell'ambiente di Ubuntu, è possibile:
   - Creare, modificare e testare file .blif direttamente da Ubuntu.
   - Creare file .blif sul Mac, spostarli nella cartella di sviluppo "SIS" e testarli avviando Ubuntu. I file saranno sincronizzati nella cartella "esercizio-sis".

## Assistenza

Se si riscontrano problemi o si necessita di assistenza, è possibile contattare contattarmi tramite la tab Issues di GitHub.
