��    6      �              |  8   }  E   �  6   �  :   3  <   n  S   �  B   �  	   B     L  ]   ^  �   �  `   �     �  Q   
  m   \    �  F   �  *   )	  �   T	  i   $
     �
  -  �
  �   �     d  a   �  a   F    �  #  �  ;  �  
   $  
   /     :     J  j   Y  [   �  �      �   �     �  Y   �     �  H     �   U  �   �  �   �  T   u  ?  �  '  
  Q   2  )   �  �   �  �   C  T     z   b  �  �  =   �  M   �  ;   J  8   �  ;   �  `   �  K   \   	   �      �   e   �   �   +!  a   !"     �"  R   �"  q   �"  '  Y#  F   �$  .   �$  �   �$  r   �%     O&  N  [&  �   �'  �   I(  d   �(  d   ;)  (  �)  �  �*  U  �-     �.  
   �.     �.     /  l   /  ]   �/  �   �/  �   �0     j1  Y   �1     �1  M   �1  �   A2  �   �2  �   �3  i   �4  o  &5  T  �6  [   �7  0   G8  �   x8  �   9  S   �9  �   C:   **Q:** Does the Nitrophone work with my carrier network? **Q:** How can I check, if my NitroPhone has been hacked/compromised? **Q:** What is a *Kill Switch* and how to activate it? **Q:** What is and how to activate *PIN Layout Scrambling* **Q:** Where can I get further information about GrapheneOS? **Q:** Why do I get "Warning: Your device is loading a different operating system"? *Long press on the respective app icon -> app info -> permissions* App Store Background Images Backup: The integrated backup (Seedvault) and Nextcloud. Choose Settings -> System -> Backup. Browser: The pre-installed browser Vanadium is hardened and therefore recommended for high security. For better ad blocking, `Bromite <https://github.com/bromite/bromite/releases/latest>`_ browser is recommended instead. By default you have a secure smartphone, already pre-installed with all the most necessary apps. Compatible Apps Contacts and calendar synchronization: DAVx5 supports CalDAV, CardDAV and WebCAL. Download all 5 files from `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Earlier there was a list, but as the Play Service implementation progresses, most of the apps should work, although there are still some not working, a list will be available `here <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_. Email: K9-mail and OpenKeyChain (for OpenPGP encryption) or FairEmail. For more details, see the following pages: For very high security requirements, you should use as few apps as possible to provide a small attack surface. If instead you want to use the NitroPhone as an everyday smartphone with more apps we recommend: From the home screen, select: *Settings -> Apps -> Google Play services and disable battery optimization* Getting Started Google claims `all major carriers`_ should work with the Pixel phones. Nevertheless there might be exceptions, obviously we cannot check `all` carriers around the world. Best practice, is to check if you find some tests/experience stories about the Pixel 4a together with your planned carrier network. If the apps in F-Droid are not enough for you, open F-Droid and install Aurora Store. In Aurora Store, you can install all apps from Google Play Store. If you want to check the integrity of the operating system, you can use `remote verification <https://attestation.app/about>`_. Install `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Install `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Install the `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. This has exclusively open source apps that do without drastic tracking and without advertising. Here you will find thousands of apps from a wide variety of fields. If you are looking for an app, check F-Droid first. Kill Switches, which erase all the phone's data when triggered, are very risky in practice as they could be triggered unintentionally. Therefore, the NitroPhone instead has the feature to automatically shut down and restart when inactive for a set period of time. This puts the phone in a secure state where all data is encrypted, no data is in RAM, and the phone can only be unlocked with the legitimate PIN or password. To enable, select: *Settings -> Security -> Auto reboot -> select the idle time duration after which the phone should reboot* Many apps work without Google Play Services. However, if you want to use apps that require Google Play Services, you can install `Google Play Services in a sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ as follows. In the future, an installer will be provided to simplify the installation process. Messenger: NitroPhone NitroPhone Apps NitroPhone FAQ One-time password generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Open F-Droid and install Split APKs Installer (SAI). (Also available from the Aurora Store) Open Split APKs Installer and install all five files you downloaded in step 3. **Note:** The correct base file has probably been renamed to ``base (2).apk``. Open the Google Play Store once and press "Sign in" to start the initialization. You don't have to finish the sign in and a real login is not necessary. This is solely to initialize the software. Permissions of Individual Apps Please familiarize yourself with `using your GrapheneOS <https://grapheneos.org/usage>`_. Recommended Apps Regarding camera app, see `here <https://grapheneos.org/usage#camera>`_. Set up a six-digit PIN to protect the phone. In cooperation with the security chip, this will ensure high security while maintaining good usability. Shortly after the phone is turned on, the warning "Your device is loading a different operating system" is displayed. This warning indicates that no ordinary Google Android is running and can be ignored. The Google Play Store cannot install and update apps due to the sandbox. Instead, always use F-Droid (for open source apps) or Aurora Store (for apps from Google Play Store) to install apps. To check or change the permissions on network access and sensors for a specific app: To make it difficult for strangers to read the PIN when typing it in, you can display the PIN layout in a random order. Additionally, we recommend a `privacy screen <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. To enable, select: *Settings -> Security -> PIN scrambling -> Scramble PIN* To prevent some apps from accessing Google Play Services, install Google Play Services in a separate profile. To do this, create a new dedicated user profile and install the Google Play Services there. Using a work profile together with *Shelter* is also possible, but without as much isolation. VPN: Orbot uses the free TOR network. Mullvad VPN and IVPN are paid VPN services. You can use these nice background images: `Briar <https://briarproject.org/>`_ is a peer-to-peer messenger without any server at all, which can be used without internet with contacts nearby. `Element <https://element.io/>`_ does not require a central infrastructure and allows the use of own servers. An own account can be registered for free at `NitroChat <https://nitro.chat>`_ for example. `Here <https://grapheneos.org/faq>`_ you can find further information on GrapheneOS. `Signal <https://signal.org/android/apk/>`_ is secure and now widely used. It can also be downloaded without an app store. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-06 20:42+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: nl
Language-Team: Dutch <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitrophone/nl/>
Plural-Forms: nplurals=2; plural=n != 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Q:** Werkt de Nitrophone met het netwerk van mijn provider? **Q:** Hoe kan ik controleren of mijn NitroPhone gehackt/gecompromitteerd is? **Q:** Wat is een *Kill schakelaar* en hoe activeer je die? **Q:** Wat is en hoe activeer ik *PIN Layout Scrambling* **Q:** Waar kan ik meer informatie krijgen over GrapheneOS? **Q:** Waarom krijg ik "Waarschuwing: Uw apparaat is een ander besturingssysteem aan het laden"? *Lang drukken op het respectievelijke app icoon -> app info -> permissions* App Store Achtergrondbeelden Back-up: De geïntegreerde back-up (Seedvault) en Nextcloud. Kies Instellingen -> Systeem -> Back-up. Browser: De voorgeïnstalleerde browser Vanadium is gehard en wordt daarom aanbevolen voor hoge beveiliging. Voor een betere blokkering van advertenties wordt de `Bromite <https://github.com/bromite/bromite/releases/latest>`_ browser aanbevolen. Standaard hebt u een veilige smartphone, al voorgeïnstalleerd met alle meest noodzakelijke apps. Compatibele apps Contacten en kalender synchronisatie: DAVx5 ondersteunt CalDAV, CardDAV en WebCAL. Download alle 5 bestanden van `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Eerder was er een lijst, maar naarmate de Play Service implementatie vordert, zouden de meeste apps moeten werken, hoewel er nog steeds een aantal niet werken, een lijst zal beschikbaar zijn `hier <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_. E-mail: K9-mail en OpenKeyChain (voor OpenPGP-encryptie) of FairEmail. Voor meer details, zie de volgende bladzijden: Voor zeer hoge beveiligingseisen moet je zo min mogelijk apps gebruiken om een klein aanvalsoppervlak te hebben. Als je in plaats daarvan de NitroPhone wilt gebruiken als een alledaagse smartphone met meer apps, raden we je aan: Selecteer in het beginscherm: *Instellingen -> Apps -> Google Play diensten en schakel batterij optimalisatie uit* Aan de slag Google beweert dat `alle grote providers`_ met de Pixel-telefoons zouden moeten werken. Toch kunnen er uitzonderingen zijn, we kunnen natuurlijk niet `alle` providers over de hele wereld controleren. Het beste is om na te gaan of je tests/ervaringen kunt vinden over de Pixel 4a in combinatie met het netwerk van je geplande provider. Als de apps in F-Droid niet genoeg voor je zijn, open F-Droid en installeer Aurora Store. In Aurora Store, kunt u alle apps installeren van Google Play Store. Als u de integriteit van het besturingssysteem wilt controleren, kunt u `verificatie op afstand <https://attestation.app/about>`_ gebruiken. Installeer `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Installeer `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Installeer de `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. Deze heeft uitsluitend open source apps die het zonder drastische tracking en zonder reclame doen. Hier vindt u duizenden apps uit de meest uiteenlopende vakgebieden. Als u op zoek bent naar een app, kijk dan eerst op F-Droid. Kill Switches, die alle gegevens van de telefoon wissen wanneer ze worden geactiveerd, zijn in de praktijk zeer riskant omdat ze onbedoeld kunnen worden geactiveerd. Daarom heeft de NitroPhone in plaats daarvan de functie om automatisch af te sluiten en opnieuw op te starten wanneer hij gedurende een bepaalde periode inactief is. Dit zet de telefoon in een veilige toestand waarin alle gegevens versleuteld zijn, zich geen gegevens in het RAM bevinden en de telefoon alleen kan worden ontgrendeld met de legitieme PIN of wachtwoord. Om in te schakelen, selecteert u: *Instellingen -> Beveiliging -> Automatisch opnieuw opstarten -> selecteer de inactieve tijdsduur waarna de telefoon opnieuw moet opstarten* Veel apps werken zonder Google Play Services. Als u echter apps wilt gebruiken die Google Play Services vereisen, kunt u `Google Play Services als volgt in een sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ installeren. In de toekomst zal een installatieprogramma worden geleverd om het installatieproces te vereenvoudigen. Boodschapper: NitroPhone NitroPhone Apps NitroPhone FAQ Eenmalige wachtwoordgenerator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Open F-Droid en installeer Split APKs Installer (SAI). (Ook verkrijgbaar bij de Aurora Store) Open Split APKs Installer en installeer alle vijf bestanden die je in stap 3 hebt gedownload. **Note:** Het juiste basisbestand is waarschijnlijk hernoemd naar ``base (2).apk``. Open de Google Play Store een keer en druk op "Sign in" om de initialisatie te starten. U'hoeft het aanmelden niet af te maken en een echte login is niet nodig. Dit is alleen om de software te initialiseren. Rechten van afzonderlijke apps Maak uzelf vertrouwd met `het gebruik van uw GrapheneOS <https://grapheneos.org/usage>`_. Aanbevolen Apps Wat betreft de camera-app, zie `hier <https://grapheneos.org/usage#camera>`_. Stel een zescijferige PIN-code in om de telefoon te beschermen. In samenwerking met de beveiligingschip zorgt dit voor een hoge veiligheid met behoud van een goede bruikbaarheid. Kort nadat de telefoon is aangezet, verschijnt de waarschuwing "Your device is loading a different operating system" op het scherm. Deze waarschuwing geeft aan dat er geen gewoon Google Android wordt uitgevoerd en kan worden genegeerd. De Google Play Store kan geen apps installeren en updaten vanwege de sandbox. Gebruik in plaats daarvan altijd F-Droid (voor open source apps) of Aurora Store (voor apps uit de Google Play Store) om apps te installeren. Om de machtigingen voor netwerktoegang en sensoren voor een specifieke app te controleren of te wijzigen: Om het voor vreemden moeilijk te maken de PIN-code te lezen wanneer zij deze intypen, kunt u de PIN-code in een willekeurige volgorde weergeven. Bovendien bevelen wij een `privacy-scherm aan <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. Om in te schakelen, selecteert u: *Instellingen -> Beveiliging -> PIN scrambling -> Scramble PIN* Om te voorkomen dat sommige apps toegang hebben tot Google Play Services, installeert u Google Play Services in een afzonderlijk profiel. Maak hiervoor een nieuw speciaal gebruikersprofiel en installeer de Google Play Services daar. Het gebruik van een werkprofiel in combinatie met *Shelter* is ook mogelijk, maar zonder evenveel isolatie. VPN: Orbot gebruikt het gratis TOR-netwerk. Mullvad VPN en IVPN zijn betaalde VPN-diensten. Je kunt deze mooie achtergrondbeelden gebruiken: `Briar <https://briarproject.org/>`_ is een peer-to-peer messenger zonder enige server, die zonder internet kan worden gebruikt met contacten in de buurt. `Element <https://element.io/>`_ heeft geen centrale infrastructuur nodig en staat het gebruik van eigen servers toe. Een eigen account kan gratis worden geregistreerd bij `NitroChat <https://nitro.chat>`_ bijvoorbeeld. `Hier <https://grapheneos.org/faq>`_ kunt u meer informatie vinden over GrapheneOS. `Signal <https://signal.org/android/apk/>`_ is veilig en wordt nu veel gebruikt. Het kan ook worden gedownload zonder een app store. 