
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
   - Aprire il terminale e navigare fino al desktop usando il comando `cd ~/Desktop`.
   - Clone o scaricare questo repository: `git clone https://github.com/Francesco146/sis-arm.git`
   - Navigare nel terminale fino alla cartella "SIS" usando il comando `cd SIS`.

3. **Avvio dell'ambiente di sviluppo**
   - Assicurarsi che Docker sia avviato.
   - Navigare nel terminale fino alla cartella "SIS" e eseguire il comando:

     ```bash
     ./start.sh
     ```

4. **Utilizzo di SIS**
   Una volta all'interno dell'ambiente di Ubuntu, è possibile:
   - Creare, modificare e testare file .blif direttamente da Ubuntu.
   - Creare file .blif sul Mac, spostarli nella cartella di sviluppo "SIS" e testarli avviando Ubuntu. I file saranno sincronizzati nella cartella "SIS".

## Assistenza

Se si riscontrano problemi o si necessita di assistenza, è possibile contattare contattarmi tramite la tab Issues di GitHub.
