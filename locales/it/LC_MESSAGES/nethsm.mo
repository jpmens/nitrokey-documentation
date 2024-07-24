��    S      �              L  �   M  q     [   y  �   �    �  k   �  +   	  %   B	  5   h	  _   �	  _   �	  4  ^
  )   �  1   �     �  ^  �  o   V     �  
   �  
   �     �  V     %   Y  �               �   *  �   �  M   �     	  �     �   �  w  �     +  e   :  !   �  �   �  V   �      �          %     4  	   C  �   M     "  F   )  �   p  �   N  .   �  7     '   V     ~     �  "   �  >  �            r     !   �  �   �  O   �  �  �  V   �  �   �  �   �  8   P   A   �   P   �   E   !  �   b!  |  "  �   �#  f   6$    �$  .   �%  �   �%     e&    m&     o'  ;   '  �   �'     _(  �  �(  �   �*  |   �+  l   ,    ~,    �-  r   �.  -   /  &   B/  ?   i/  �   �/  ~   .0  [  �0  7   	2  0   A2     r2  �  z2  z   �3     w4  	   �4     �4     �4  T   �4  )   5  �   /5     �5     �5  �   �5  �   �6  O   {7     �7  �   �7  5  �8  �  �9     r;  e   �;  ,   �;  �   <  e   �<  (   a=     �=     �=     �=     �=  �   �=     �>  J   �>  �    ?  �   @  2   �@  4   �@  .   *A     YA     yA  (   A  c  �A     C     #C  |   )C  -   �C    �C  G   �D  �  *E  b   G  �   fG  �   4H  3   �H  @   I  _   WI  R   �I  �   
J  �  �J  �   �L  r   9M  .  �M  6   �N  �   O     �O  %  �O     �P  N   Q  �   QQ  �   R   *R-Administrator*: A user account with this Role has access to all operations provided by the REST API, with the exception of key usage operations, i.e. message signing and decryption. *R-Backup*: A user account with this Role has access to the operations required to initiate a system backup only. *R-Metrics*: A user account with this Role has access to read-only metrics operations only. *R-Operator*: A user account with this Role has access to all key usage operations, a read-only subset of key management operations and user management operations allowing changes to their own account only. A new NetHSM needs to be provisioned first with passphrases and the current time. The *Admin Passphrase* is the *Administrator*’s passphrase, which is the super user of the NetHSM. The *Unlock Passphrase* is used to encrypt NetHSM’s confidential data store. A public NetHSM demo instance is available at `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Accessing a NetHSM using the PKCS#11 driver Accessing a NetHSM using the REST API Accessing a NetHSM with the nitropy command line tool After creating a key (here: ID 23) with the according mechanism, you can use it for decryption: After creating a key (here: ID 42) with the according mechanism, you can use it for decryption: Alternatively you can run the `NetHSM Docker container <https://hub.docker.com/r/nitrokey/nethsm>`_ locally. The NetHSM container requires nested virtualization for strong separation with other containers. Thus, to start a NetHSM container you need a Linux host with /dev/kvm available. Execute this command: Alternatively, you can cancel the update: And then use ``openssl`` to verify the signature: Backups Before we start, we store the host name of the NetHSM instance in the ``NETHSM_HOST`` environment variable.  You can use the public NetHSM demo instance ``nethsmdemo.nitrokey.com`` or run a local demo instance using the NetHSM docker image, see the `Development and Testing </index.html#development-and-testing>`_ section of the NetHSM documentation. Connect the NetHSM's ETH3 port with the network. Don't use the ETH0 port because it allows wider system access. Create a User Decrypting Decryption Development and Testing Download the `PKCS#11 driver <https://github.com/Nitrokey/nethsm-pkcs11>`_ for NetHSM. First, let’s see what we have here: For a complete list of available key algorithms and key mechanisms, see the API documentation for the KeyAlgorithm_ and KeyMechanism_ types. Generate Keys Getting Started If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--insecure``/``-k`` option for ``curl`` to skip the certificate check. If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--no-verify-tls`` option for ``nitropy`` to skip the certificate check. If you want to continue with the installation, you can now commit the update: Import Keys In *Attended Boot* mode the *Unlock Passphrase* needs to be entered during each start which is used to encrypt the data store. For security reasons this mode is recommended. In *Unattended Boot* mode no Unlock Passphrase is required, therefore the NetHSM can start unattended and the data store is stored unencrypted. Use this mode if your availability requirements can’t be fulfilled with *Attended Boot* mode. In this guide, we want to use an RSA key to decrypt data using PKCS #1 and to sign data with PSS using SHA256.  So let’s generate a new key on the NetHSM. Make sure to use the ``RSA`` algorithm and to select the ``RSA_Signature_PSS_SHA256`` and ``RSA_Decryption_PKCS1`` key mechanisms.  If you don’t specify a key ID, the NetHSM will generate a random ID for the new key. Initialization Instead of generating a key on the NetHSM, you can also import existing private keys into the NetHSM: Integration to Custom Application It is possible to crate a backup of the NetHSM that captures both the configuration and the stored keys.  In order to create a backup, you first have to set a backup passphrase that is used to encrypt the backup file: It is possible to set and query certificates for the keys stored on a NetHSM instance: Key Certificate Signing Requests Key Certificates Key Management Key Operations List Keys Modify the configuration file ``p11nethsm.conf`` according to your setup (e.g. address, operator name) and store it in ``$HOME/.nitrokey``, ``/etc/nitrokey/``, or in the folder where your application is executed. NetHSM NetHSM can be used in *Attended Boot* mode and *Unattended Boot* mode. Note: In a future release another Role will be implemented which is allowed to /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE in addition to what R-Operator is allowed to do. Now create a new user with the operator role that can be used to sign and decrypt data.  Note that the NetHSM assigns a random user ID if we don’t specify it. Now we can use the NetHSM to decrypt the data: Now you have to create a user with the *R-Backup* role: Or switch back to *Attended Boot* mode: Retrieve the current mode: Roles See what the device’s status is: Separation of duties can be implemented by using the available Roles. Each user account configured on the NetHSM has one of the following Roles assigned to it. Following is a high-level description of the operations allowed by individual Roles, for endpoint-specific details please refer to the REST API documentation. Show Key Details Signing Similarily, we can sign data using the key on the NetHSM.  For RSA and ECDSA, we have to calculate a digest first: Switch to *Unattended Boot* mode: The NetHSM appliance is available at address 192.168.1.1. Access and initialize the NetHSM using `nitropy command line tool <cli.html>`_. Alternatively, the `REST API <api.html>`_ and `PKCS#11 driver <pkcs11.html>`_ can be used. The NetHSM demo instance at ``nethsmdemo.nitrokey.com`` is already provisioned. The NetHSM supports RSA, ED25519 and ECDSA keys.  When creating a key, you have to select both the key algorithm and the key mechanisms to use.  RSA keys can be used for decryption (with the modes raw, PKCS #1 and OAEP with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512) and for signatures (with the modes PKCS #1 and PSS with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512).  The other algorithms only support the signature mechanism. The NetHSM supports generating Certificate Signing Requests (CSR) for the stored keys: The ``-i``/``--include`` option causes ``curl`` to print the HTTP status code and the response headers.  The ``-w '\n'``/``--write-out '\n'`` option adds a newline after the response body. The generated client code, in this example JavaScript, will be created in the ``./out/`` directory. This folder also contains the necessary documentation how to use it. Then can you generate the backup and write it to a file: Then we can create a signature from this digest using the NetHSM: Then you can generate the NetHSM client for your programming language like this: This backup file can be restored on an unprovisioned NetHSM instance: This driver is still an early Proof of Concept implementation that only implements the functions that are necessary for operating TLS servers like for example an HTTPS server. This tutorial demonstrates how to access the NetHMS via REST API. The interface is `documented here <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ and it's specification is available as `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ and as `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. This tutorial demonstrates how to access the NetHMS via `nitropy <https://github.com/Nitrokey/pynitrokey>`_ command line tool, which you need to download and install. To be able to use the key with ``openssl``, we export it as a PEM file and store it as ``public.pem``: To integrate the NetHSM into own custom applications client libraries are available for almost all programming languages, including JavaScript, C++ and Python for example. Therefore we recommend using `OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. To list all the available languages, you enter To make sure that the key has been created and has the correct algorithm and mechanism settings, we can query all keys on the NetHSM: Updates Updates for the NetHSM can be installed in a two-step process.  First you have to upload the update image to the NetHSM.  The image is then checked and validated.  If the validation is successful, the release notes for the update are returned by the NetHSM: User Management We can also query the public key of the generated key pair: We can encrypt data for the key stored on the NetHSM using ``openssl``. (``public.pem`` is the public key file that we created in the `Show Key Details`_ section.) We can inspect the key with ``openssl`` and use it for encryption or signature verification (as described in the next section): Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-06 20:43+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: it
Language-Team: Italian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nethsm/it/>
Plural-Forms: nplurals=2; plural=n != 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 *R-Administrator*: Un account utente con questo ruolo ha accesso a tutte le operazioni fornite dall'API REST, ad eccezione delle operazioni di utilizzo delle chiavi, cioè la firma e la decrittazione dei messaggi. *R-Backup*: Un account utente con questo ruolo ha accesso solo alle operazioni necessarie per avviare un backup del sistema. *R-Metriche*: Un account utente con questo ruolo ha accesso solo alle operazioni di metrica in sola lettura. *R-Operatore*: Un account utente con questo ruolo ha accesso a tutte le operazioni di utilizzo delle chiavi, a un sottoinsieme di operazioni di gestione delle chiavi in sola lettura e alle operazioni di gestione degli utenti che consentono modifiche solo al proprio account. Un nuovo NetHSM deve essere prima approvvigionato con le passphrase e l'ora corrente. La *Admin Passphrase* è la passphrase dell'*Administrator*, che è il super utente del NetHSM. La *Passphrase di sblocco* è usata per criptare l'archivio di dati riservati del NetHSM. Un'istanza demo pubblica di NetHSM è disponibile su `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Accedere a un NetHSM usando il driver PKCS#11 Accedere a un NetHSM usando l'API REST Accedere a un NetHSM con lo strumento a riga di comando nitropy Dopo aver creato una chiave (in questo caso: ID 23) con il meccanismo corrispondente, è possibile utilizzarla per la decrittazione: Dopo aver creato una chiave (in questo caso: ID 42) con il meccanismo indicato, è possibile utilizzarla per la decrittazione: In alternativa potete eseguire il contenitore Docker `NetHSM <https://hub.docker.com/r/nitrokey/nethsm>`_ localmente. Il contenitore NetHSM richiede una virtualizzazione annidata per una forte separazione con altri contenitori. Quindi, per avviare un contenitore NetHSM hai bisogno di un host Linux con /dev/kvm disponibile. Esegui questo comando: In alternativa, è possibile annullare l'aggiornamento: E poi usare ``openssl`` per verificare la firma: Backups Prima di iniziare, memorizziamo il nome dell'host dell'istanza di NetHSM nella variabile d'ambiente ``NETHSM_HOST``.  È possibile utilizzare l'istanza demo pubblica di NetHSM ``nethsmdemo.nitrokey.com`` o eseguire un'istanza demo locale utilizzando l'immagine docker di NetHSM, vedere la sezione `Sviluppo e test </index.html#development-and-testing>`_ della documentazione di NetHSM. Collegate la porta ETH3 del NetHSM con la rete. Non usate la porta ETH0 perché permette un accesso più ampio al sistema. Creare un utente Decifrare Decrittazione Sviluppo e test Scarica il driver `PKCS#11 <https://github.com/Nitrokey/nethsm-pkcs11>`_ per NetHSM. Per prima cosa, vediamo cosa abbiamo qui: Per una lista completa di algoritmi e meccanismi di chiavi disponibili, vedere la documentazione API per i tipi KeyAlgorithm_ e KeyMechanism_. Generare le chiavi Come iniziare Se usate un'istanza demo di NetHSM con un certificato autofirmato, per esempio usando l'immagine Docker, dovrai usare l'opzione ``--insecure``/``-k`` per ``curl`` per saltare il controllo del certificato. Se usate un'istanza demo di NetHSM con un certificato autofirmato, per esempio usando l'immagine Docker, dovrete usare l'opzione ``--no-verify-tls`` per ``nitropy`` per saltare il controllo del certificato. Se volete continuare con l'installazione, potete ora impegnare l'aggiornamento: Importazione di chiavi In modalità *Attended Boot* è necessario inserire la *Unlock Passphrase* durante ogni avvio, che è usata per crittografare l'archivio dati. Per ragioni di sicurezza questa modalità è raccomandata. Nella modalità *Unattended Boot* non è richiesta alcuna Passphrase di sblocco, quindi il NetHSM può avviarsi senza sorveglianza e l'archivio dati è memorizzato in modo non criptato. Usa questa modalità se i tuoi requisiti di disponibilità non possono essere soddisfatti con la modalità *Attended Boot*. In questa guida, vogliamo usare una chiave RSA per decifrare i dati usando PKCS #1 e per firmare i dati con PSS usando SHA256.  Quindi generiamo una nuova chiave sul NetHSM. Assicuratevi di usare l'algoritmo ``RSA`` e di selezionare i meccanismi di chiave ``RSA_Signature_PSS_SHA256`` e ``RSA_Decryption_PKCS1``.  Se non si specifica un ID chiave, NetHSM genererà un ID casuale per la nuova chiave. Inizializzazione Invece di generare una chiave sul NetHSM, potete anche importare chiavi private esistenti nel NetHSM: Integrazione all'applicazione personalizzata È possibile creare un backup del NetHSM che cattura sia la configurazione che le chiavi memorizzate.  Per creare un backup, devi prima impostare una passphrase di backup che viene utilizzata per crittografare il file di backup: È possibile impostare e interrogare i certificati per le chiavi memorizzate su un'istanza di NetHSM: Richieste di firma di certificati chiave Certificati chiave Gestione delle chiavi Operazioni chiave Chiavi dell'elenco Modificate il file di configurazione ``p11nethsm.conf`` secondo la vostra configurazione (es. indirizzo, nome dell'operatore) e memorizzarlo in ``$HOME/.nitrokey``, ``/etc/nitrokey/``, o nella cartella dove viene eseguita la vostra applicazione. NetHSM NetHSM può essere usato in modalità *Attended Boot* e *Unattended Boot*. Nota: in una versione futura sarà implementato un altro ruolo che è autorizzato a /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE in aggiunta a ciò che R-Operator è autorizzato a fare. Ora create un nuovo utente con il ruolo di operatore che può essere usato per firmare e decifrare i dati.  Notate che il NetHSM assegna un ID utente casuale se non lo specifichiamo. Ora possiamo usare il NetHSM per decifrare i dati: Ora dovete creare un utente con il ruolo *R-Backup*: Oppure tornare alla modalità *Attended Boot*: Recupera la modalità corrente: Ruoli Vedere qual è lo stato del dispositivo: La separazione dei compiti può essere implementata utilizzando i Ruoli disponibili. Ogni account utente configurato sul NetHSM ha uno dei seguenti Ruoli assegnati ad esso. Di seguito è riportata una descrizione di alto livello delle operazioni consentite dai singoli Ruoli, per i dettagli specifici dell'endpoint si rimanda alla documentazione REST API. Mostra dettagli chiave Firma Allo stesso modo, possiamo firmare i dati usando la chiave sul NetHSM.  Per RSA e ECDSA, dobbiamo prima calcolare un digest: Passare alla modalità *Avvio non assistito*: Il dispositivo NetHSM è disponibile all'indirizzo 192.168.1.1. Accedere e inizializzare il NetHSM usando ` lo strumento della linea di comandonitropia <cli.html>`_. In alternativa, è possibile utilizzare le `REST API <api.html>`_ e `il driver <pkcs11.html>`_ PKCS#11. L'istanza demo di NetHSM a ``nethsmdemo.nitrokey.com`` è già fornita. Il NetHSM supporta le chiavi RSA, ED25519 e ECDSA.  Quando si crea una chiave, è necessario selezionare sia l'algoritmo di chiave che i meccanismi di chiave da utilizzare.  Le chiavi RSA possono essere usate per la decrittazione (con le modalità raw, PKCS #1 e OAEP con MD5, SHA1, SHA224, SHA256, SHA384 o SHA512) e per la firma (con le modalità PKCS #1 e PSS con MD5, SHA1, SHA224, SHA256, SHA384 o SHA512).  Gli altri algoritmi supportano solo il meccanismo di firma. Il NetHSM supporta la generazione di Certificate Signing Requests (CSR) per le chiavi memorizzate: L'opzione ``-i``/``--include`` fa sì che ``curl`` stampi il codice di stato HTTP e gli header della risposta.  L'opzione ``-w '\n'``/``--write-out '\n'`` aggiunge una newline dopo il corpo della risposta. Il codice client generato, in questo esempio JavaScript, sarà creato nella cartella ``./out/``. Questa cartella contiene anche la documentazione necessaria al suo utilizzo. Poi può generare il backup e scriverlo su un file: Poi possiamo creare una firma da questo digest usando il NetHSM: Poi potete generare il client NetHSM per il vostro linguaggio di programmazione in questo modo: Questo file di backup può essere ripristinato su un'istanza NetHSM non provvista: Questo driver è ancora una prima implementazione Proof of Concept che implementa solo le funzioni che sono necessarie per far funzionare i server TLS come per esempio un server HTTPS. Questo tutorial dimostra come accedere al NetHMS via REST API. L'interfaccia è `documentata qui <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ ed è disponibile come `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_;è disponibile come `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ e come `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. Questo tutorial dimostra come accedere al NetHMS tramite `nitropia <https://github.com/Nitrokey/pynitrokey>`_ strumento a riga di comando, che è necessario scaricare e installare. Per poter utilizzare la chiave con ``openssl``, la esportiamo come file PEM e la memorizziamo come ``public.pem``: Per integrare il NetHSM nelle proprie applicazioni personalizzate sono disponibili librerie client per quasi tutti i linguaggi di programmazione, inclusi JavaScript, C++ e Python per esempio. Pertanto si consiglia di utilizzare ` OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. Per elencare tutte le lingue disponibili, si inserisce Per assicurarsi che la chiave sia stata creata e che abbia le impostazioni corrette dell'algoritmo e del meccanismo, possiamo interrogare tutte le chiavi sul NetHSM: Aggiornamenti Gli aggiornamenti per il NetHSM possono essere installati in un processo in due fasi.  Prima devi caricare l'immagine di aggiornamento sul NetHSM.  L'immagine viene poi controllata e convalidata.  Se la convalida ha successo, le note di rilascio per l'aggiornamento sono restituite dal NetHSM: Gestione degli utenti Possiamo anche interrogare la chiave pubblica della coppia di chiavi generata: Possiamo criptare i dati per la chiave memorizzata sul NetHSM usando ``openssl``. (``public.pem`` è il file della chiave pubblica che abbiamo creato nella sezione `Show Key Details`_). Possiamo ispezionare la chiave con ``openssl`` e usarla per la crittografia o la verifica della firma (come descritto nella prossima sezione): 