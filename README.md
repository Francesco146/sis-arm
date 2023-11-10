
# SIS su Mac con M1 e superiori

## Indice

1. [Prerequisiti](#prerequisiti)
2. [Istruzioni](#istruzioni)
3. [Note](#note)
4. [Aggiornamento del Tool](#aggiornamento-del-tool)
5. [Assistenza](#assistenza)

## Prerequisiti

- Mac con processore arm64 (ad esempio, MacBook Air o MacBook Pro)
- Connessione Internet
- Docker Apple Silicon
  - [Link per il download](https://desktop.docker.com/mac/main/arm64/Docker.dmg)

## Istruzioni

1. **Installazione di Docker**

Scaricare Docker Apple Silicon utilizzando il link sopra e completare l'installazione.

2. **Preparazione dell'ambiente di lavoro**

Aprire il terminale e navigare fino al desktop usando il comando:

```bash
cd ~/Desktop
```

Clonare questo repository:

```bash
git clone https://github.com/Francesco146/sis-arm.git
```

Navigare nel terminale fino alla cartella "SIS", all'interno della repository appena clonata, usando il comando:

```bash
cd sis-arm/SIS
```

3. **Avvio dell'ambiente di sviluppo (da eseguire ogni volta che si vuole utilizzare SIS)**

Assicurarsi che Docker sia avviato.
Navigare nel terminale fino alla cartella "SIS" e eseguire il comando:

```bash
./start.sh
```

4. **Utilizzo di SIS**

Una volta all'interno dell'ambiente di Ubuntu, è possibile:
- Creare, modificare e testare file .blif direttamente da Ubuntu.
- Creare file .blif sul Mac, spostarli nella cartella di sviluppo "SIS" e testarli avviando Ubuntu. I file saranno sincronizzati nella cartella "SIS".

### Note

Non eliminate nessun file dalla directory "SIS" (se non i vostri .blif) o dalla directory "sis-arm" altrimenti lo script di avvio non funzionerà correttamente.

## Aggiornamento del Tool

Per garantire che il tuo strumento SIS sia sempre aggiornato con le ultime correzioni di bug e miglioramenti, puoi seguire i passaggi seguenti per aggiornare il tool:

1. **Aggiornamento del Repository Git**

Apri il terminale e naviga fino alla cartella "sis-arm" usando il comando:

```bash
cd ~/Desktop/sis-arm
```

Assicurati di essere sulla branch principale del repository con il comando:

```bash
git checkout master
```

Poi, scarica gli ultimi cambiamenti dal repository remoto:

```bash
git pull origin master
```

Con questi passaggi, il tuo ambiente di sviluppo SIS dovrebbe essere aggiornato alla versione più recente. Se incontri problemi durante l'aggiornamento o se hai domande, non esitare a chiedere assistenza nella sezione Issues su GitHub.

## Assistenza

Se si riscontrano problemi o si necessita di assistenza, è possibile contattarmi tramite la tab Issues di GitHub.
