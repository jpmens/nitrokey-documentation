��    c      4              L     M     i     �  3   �  7   �          )     B  	   b  5   l  G   �  �   �  ^   �  {   �     u	     �	     �	    �	  
   �
     �
     �
       6     +   U  �   �  
     �   (  d  �  �   d  �   -  F  �  �      �   �  �   4  �   �  N   �  i        �     �  �   �  �   Q     1     C     `       �   �  �   +  Z     �   q  D     )   L  �   v  �   8  Q   �     5  �   A     -  )   :  L   d  �   �  ;   >  ;   z  �   �  2   ^  >   �    �  d   �   �   S!  �   �!  �  �"    T$  Q   r%  �   �%  �   �&  �   g'  =  �'  �   -)  M   �)     A*     Q*  /   q*  (   �*  :   �*     +  C   +  &   O+  �   v+  p   ',  �   �,  ~   (-  �   �-  .   7.  D  f.  1  �/  �   �0  �   �1    �2  }   �3  �  4     �5     	6     '6  D   C6  B   �6  "   �6  #   �6  -   7     @7  ?   M7  ^   �7  �   �7  d   �8  �   9  *   �9  +   �9  '   �9  4  %:     Z;     f;  !   �;     �;  @   �;  5   �;  �   ,<     �<  �   �<  �  �=  �   s?  �   e@  M  @A  �   �C  �   <D  �   �D  �   �E  h   �F  �   G     �G     �G  �   �G    {H     �I     �I     �I     �I  �   �I    xJ  c   �K  �   �K  _   �L  ;   M  �   XM  �   DN  ]   O  
   pO    {O     �P  :   �P  ]   �P  �   6Q  H   �Q  H   R  �   ^R  .   S  G   GS  Q  �S  ~   �T  �   `U     V  �  &W  ?  �X  U    Z  �   vZ  �   Z[  �   4\  �  �\  �   a^  b   __     �_  %   �_  8   �_  '   -`  D   U`  
   �`  H   �`  0   �`  �   a  �   �a  �   tb  �   'c  �   �c  .   ad  G  �d  g  �e  �   @g  �    h  :  i  �   Nj   (Nitrokey FIDO U2F - Linux) (Nitrokey FIDO U2F - Windows) (Nitrokey FIDO U2F - macOS) 1. Create a backup user and give it root privileges 2. Set up the ``rules`` to recognize the Nitrokey FIDO2 3. Install ``libpam-u2f`` 4. Prepare the Directory 5. Generate the U2F config file 6. Backup 7. Modify the Pluggable Authentication Module ``PAM`` After copying the file, restart udev via ``sudo service udev restart``. After the PAM module modification, you will be able to test your configuration right away, but it is recommended to reboot your computer, and unplug/replug the Nitrokey FIDO2. Alternatively you can build ``libpam-u2f`` from `Git <https://github.com/phoeagon/pam-u2f>`__. Alternatively you can just modify the ``/etc/pam.d/sudo`` file if you wish to use FIDO U2F when using the ``sudo`` command. And add the following lines: And plug your Nitrokey FIDO2. And restart ``udev`` service By modifying ``/etc/pam.d/common-auth`` file, you will be able to use you Nitrokey FIDO for 2nd factor authentication for graphic login and ``sudo``. Note: ``common-auth`` should be modified by adding the additional configuration line at the end of the file. CLI method Choose your operating system: Click for more options Control flags Create ``.config/Nitrokey/`` under your home directory Desktop Login and Linux User Authentication For individual user configuration you should point to the home directory in the next step, or not include the ``authfile`` option in the PAM configuration. GUI method If ``required`` or ``requisite`` is set, the failure of U2F authentication will cause a failure of the overall authentication. Failure will occur when the configured Nitrokey FIDO is not plugged, lost or destroyed. If the Nitrokey is not accepted immediately, you may need to copy this file `41-nitrokey.rules <https://www.nitrokey.com/sites/default/files/41-nitrokey.rules>`__ to ``etc/udev/rules.d/``. In very rare cases, the system will need the `older version <https://raw.githubusercontent.com/Nitrokey/libnitrokey/master/data/41-nitrokey_old.rules>`__ of this file. If you need more information about Control Flags in the ``PAM`` configuration line, you may see the last section of this guide to understand the difference, and the implications of using each of them. If you often forget to insert the key, ``prompt`` option make ``pam_u2f`` print ``Insert your U2F device, then press ENTER.`` and give you a chance to insert the Nitrokey. If you want to login to you computer using `Nitrokey Pro 2, <https://shop.nitrokey.com/shop/product/nk-pro-2-nitrokey-pro-2-3>`__ `Nitrokey Storage 2 <https://shop.nitrokey.com/shop/product/nitrokey-storage-2-56>`__ and `Nitrokey Start <https://shop.nitrokey.com/shop/product/nk-sta-nitrokey-start-6>`__ you can visit the instructions for Windows available `here <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:windows>`__, and for Linux `here <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:linux>`__. If you wish to use FIDO U2F authentication solely for Gnome’s graphic login, you might prefer to modify the\ ``/etc/pam.d/gdm-password`` If you would like to be prompted to touch the Nitrokey, ``cue`` option will make ``pam_u2f`` print ``Please touch the device.`` message. In case you prefer to setup U2F for a single user, and are locked out of your user session, you would still be able to login with the ``<backup_user>``, and proceed with the maintenance. In step 7 we have used the ``sufficient`` control flag to determine the behavior of the PAM module when the Nitrokey is plugged or not. However it is possible to change this behavior by using the following control flags: In the left corner click on ``Unlock`` and that would prompt for your password In the lower left corner click on ``Show Applications`` and type settings in the search bar as following: Instructions Introduction It is recommended to first test the instructions with a single user. For this purpose the previous command takes the ``-u`` option, to specify a user, like in the example below: Log in to the website and enable two-factor authentication in your account settings. (In most cases you will find a link to the documentation of the supported web service at `dongleauth.com <https://www.dongleauth.com/>`__) Nitrokey FIDO U2F Nitrokey FIDO U2F with Linux Nitrokey FIDO U2F with Windows Nitrokey FIDO U2F with macOS Nitrokey FIDO2 configured following `these instructions <https://www.nitrokey.com/documentation/installation#p:nitrokey-fido-u2f&os:linux>`__. Note, the output will be much longer, but sensitive parts have been removed here. For better security, and once the config file generated, we will move the ``.config/Nitrokey`` directory under the ``etc/`` directory with this command: On Ubuntu 20.04 it is possible to download directly ``libpam-u2f`` from the official repos Once done with the preparation, we can start to configure the computer to use the Nitrokey FIDO2 for 2nd factor authentication at login and ``sudo``. Once we modified the ``common-auth``, we can save and exit the file. Once you finish Step 4 you should be done Once you have properly tested the instructions in this guide (and set up a backup), it is recommended to use either the ``required`` or the ``requisite`` control flag instead of ``sufficient``. Once you run the command above, you will need to touch the key while it flashes. Once done, ``pamu2fcfg`` will append its output the ``u2f_keys`` in the following format: Open one of the `websites that support FIDO U2F <https://www.dongleauth.com/>`__. PAM modules Register your Nitrokey FIDO U2F in the account settings by touching the button to activate the Nitrokey FIDO U2F. After you have successfully configured the device, you must activate the Nitrokey FIDO U2F this way each time you log in. Requirements Scroll down in the right bar to ``Users`` Select ``Administrator`` and enter the user name and password of your choice Since we are using Central Authentication Mapping, we need to tell ``pam_u2f`` the location of the file to use with the ``authfile`` option. The Nitrokey App can not be used for the Nitrokey FIDO U2F. The Nitrokey FIDO U2F can be used with any current browser. The Nitrokey FIDO U2F supports **two-factor authentication (2FA)**. With two-factor authentication (2FA), the Nitrokey FIDO U2F is checked in addition to the password. The Output should be something like the following: The file under ``.config/Nitrokey`` must be named ``u2f_keys`` The final step is configure the PAM module files under ``/etc/pam.d/``. In this guide we will modify the ``common-auth`` file as it handles the authentication settings which are common to all services, but other options are possible. You can modify the file with the following command: The first time you plug in the Nitrokey FIDO U2F Windows may need some time to configure the device. The flags ``required`` and ``requisite`` provide a tighter access control, and will make the Nitrokey FIDO2 necessary to login, and/or use the configured service. The following guide can potentially lock you out of your computer. You should be aware of these risks, as it is recommended to first use the instructions below on a secondary computer, or after a full backup. The secure access to such a central software is especially important and can now be realized with the Nitrokey. For this purpose, access is protected by two-factor authentication (2FA) and critical users are given a Nitrokey. From now on the Nitrokey will be checked during user login in addition to the user password. Phishing attacks are thus foiled and your critical company data is protected. The two-factor authentication can be carried out using one-time passwords (TOTP, RFC 6238) and FIDO U2F, thus enabling Nitrokey Pro, Nitrokey Storage and Nitrokey FIDO U2F to be used. It is also possible to configure authentication centrally and to activate it only for selected users. There are several PAM modules files that can be modified according to your needs: This guide will walk you through the configuration of Linux to use FIDO Universal 2nd Factor, i.e. FIDO U2F with ``libpam-u2f`` and `Nitrokey FIDO2 <https://shop.nitrokey.com/shop/product/nk-fi2-nitrokey-fido2-55>`__. This solution was developed together with our partner `initOS <https://www.initos.com/>`__, who are specialized in the development and customization of Odoo. If you are interested, please contact us. This step is optional, however it is advised to have a backup Nitrokey in the case of loss, theft or destruction of your Nitrokey FIDO. To generate the configuration file we will use the ``pamu2fcfg`` utility that comes with the ``libpam-u2f``. For convenience, we will directly write the output of the utility to the ``u2f_keys`` file under ``.config/Nitrokey``. First plug your Nitrokey FIDO2 (if you did not already), and enter the following command: To set up a backup key, repeat the procedure above, and use ``pamu2fcfg -n``. This will omit the ``<username>`` field, and the output can be appended to the line with your ``<username>`` like this: To verify that the library is properly installed enter the following command: Troubleshooting Two-Factor Authentication (2FA) Two-factor authentication for ERP software Odoo Ubuntu 20.04 with Gnome Display Manager. Under ``/etc/udev/rules.d`` download ``41-nitrokey.rules`` Usage Video: Two-Factor-Authentication with the Nitrokey FIDO U2F in Odoo You can do so by using these commands: You can test the configuration by typing ``sudo ls`` in the terminal. You should be prompted the message ``Please touch the device.`` and have a similar output on the terminal: You might lose access to your data after configuring `PAM modules <http://www.linux-pam.org/Linux-PAM-html/>`__. You will also lose the ability to use ``sudo`` if you set up Central Authentication Mapping *and* used the ``required`` or ``requisite`` flags. You will lose access to your computer if you mis-configured the PAM module *and* used the ``required`` or ``requisite`` flags. `Checkout <https://www.nitrokey.com/documentation/applications#p:nitrokey-fido-u2f&os:all>`__ the various use cases and supported applications. `Contact <https://www.nitrokey.com/contact>`__ `Odoo <https://www.odoo.com/>`__ is a powerful ERP (Enterprise Resource Planning) software for companies of all sizes. Odoo is available as open source and contains modules for CRM, website/e-commerce, accounting, financial accounting, production, warehouse management, project management, document management, among others. ``bash nitrouser@nitrouser:~$ sudo ls $ sudo ls [sudo] password for <username>:  Please touch the device.`` You can also test your configuration by logging out of the user session and logging back. A similar screen should be displayed once you you unplug/replug yout Nitrokey FIDO2 and type your password: ``optional``: The success or failure of this module is only important if it is the only module in the stack associated with this service+type. The ``optional`` flag is considered to be safe to use for testing purposes. ``required``: This is the most critical flag. The module result must be successful for authentication to continue. This flag can lock you out of your computer if you do not have access to the Nitrokey. ``requisite``: Similar to ``required`` however, in the case where a specific module returns a failure, control is directly returned to the application, or to the superior PAM stack. This flag can also lock you out of your computer if you do not have access to the Nitrokey. ``sufficient``: The module result is ignored if it fails. The ``sufficient`` flag considered to be safe for testing purposes. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-09-29 08:16+0200
PO-Revision-Date: 2021-09-29 07:41+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: de
Language-Team: German <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-u2f/de/>
Plural-Forms: nplurals=2; plural=n != 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 (Nitrokey FIDO U2F - Linux) (Nitrokey FIDO U2F - Windows) (Nitrokey FIDO U2F - macOS) 1. Erstellen Sie einen Backup-Benutzer und geben Sie ihm Root-Rechte 2. Richten Sie die ``Regeln`` zur Erkennung des Nitrokey FIDO2 ein 3. Installieren Sie ``libpam-u2f`` 4. Bereiten Sie das Verzeichnis vor 5. Generieren Sie die U2F-Konfigurationsdatei 6. Sicherung 7. Modifizieren Sie das Pluggable Authentication Module ``PAM`` Nachdem Sie die Datei kopiert haben, starten Sie udev über ``sudo service udev restart`` neu. Nach der Änderung des PAM-Moduls können Sie Ihre Konfiguration sofort testen, es wird jedoch empfohlen, den Computer neu zu starten und den Nitrokey FIDO2 auszustecken/anzustecken. Alternativ können Sie ``libpam-u2f`` von `Git <https://github.com/phoeagon/pam-u2f>`__ übersetzen. Alternativ können Sie auch einfach die Datei ``/etc/pam.d/sudo`` modifizieren, wenn Sie FIDO U2F bei der Verwendung des ``sudo``-Befehls verwenden möchten. Und fügen Sie die folgenden Zeilen hinzu: Und schließen Sie Ihren Nitrokey FIDO2 an. Und starten Sie den ``udev``-Dienst neu Wenn Sie die Datei ``/etc/pam.d/common-auth`` modifizieren, können Sie Ihren Nitrokey FIDO für die 2-Faktor-Authentifizierung für grafische Anmeldung und ``sudo`` verwenden. Hinweis: ``common-auth`` sollte modifiziert werden, indem die zusätzliche Konfigurationszeile am Ende der Datei hinzugefügt wird. CLI-Methode Wählen Sie Ihr Betriebssystem: Klicken Sie für weitere Optionen Steuermerker Erstellen Sie ``.config/Nitrokey/`` unter Ihrem Home-Verzeichnis Desktop-Anmeldung und Linux-Benutzerauthentifizierung Für eine individuelle Benutzerkonfiguration sollten Sie im nächsten Schritt auf das Home-Verzeichnis verweisen, oder die Option ``authfile`` nicht in die PAM-Konfiguration aufnehmen. GUI-Methode Wenn ``required`` oder ``requisite`` gesetzt ist, führt das Scheitern der U2F-Authentifizierung zu einem Scheitern der gesamten Authentifizierung. Der Fehler tritt auf, wenn der konfigurierte Nitrokey FIDO nicht eingesteckt, verloren oder zerstört ist. Wenn der Nitrokey nicht sofort akzeptiert wird, müssen Sie eventuell diese Datei `41-nitrokey.rules <https://www.nitrokey.com/sites/default/files/41-nitrokey.rules>`__ nach ``etc/udev/rules.d/`` kopieren. In sehr seltenen Fällen wird das System die `ältere Version <https://raw.githubusercontent.com/Nitrokey/libnitrokey/master/data/41-nitrokey_old.rules>`__ dieser Datei benötigen. Wenn Sie mehr Informationen über Control Flags in der ``PAM``-Konfigurationszeile benötigen, können Sie den letzten Abschnitt dieses Handbuchs lesen, um den Unterschied und die Auswirkungen der Verwendung der einzelnen Flags zu verstehen. Wenn Sie oft vergessen, den Schlüssel einzulegen, können Sie mit der Option ``prompt`` den Ausdruck ``Insert your U2F device, then press ENTER`` verwenden, um Ihnen die Möglichkeit zu geben, den Nitrokey einzulegen. Wenn Sie sich mit `Nitrokey Pro 2, <https://shop.nitrokey.com/shop/product/nk-pro-2-nitrokey-pro-2-3>`__ `Nitrokey Storage 2 <https://shop.nitrokey.com/shop/product/nitrokey-storage-2-56>`__ und `Nitrokey Start <https://shop.nitrokey.com/shop/product/nk-sta-nitrokey-start-6>`__ an Ihrem Computer anmelden wollen, können Sie die Anleitungen für Windows `hier <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:windows>`__ und für Linux `hier <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:linux>`__ einsehen. Wenn Sie die FIDO U2F-Authentifizierung ausschließlich für die grafische Anmeldung von Gnome verwenden möchten, sollten Sie die Datei ``/etc/pam.d/gdm-password`` anpassen Wenn Sie dazu aufgefordert werden möchten, den Nitrokey zu berühren, bewirkt die Option ``cue``, daß ``pam_u2f`` die Meldung ``Bitte berühren Sie das Gerät`` ausgibt. Falls Sie es vorziehen, U2F für einen einzelnen Benutzer einzurichten, und aus Ihrer Benutzersitzung ausgesperrt werden, können Sie sich trotzdem mit dem ``<backup_user>`` anmelden und mit der Wartung fortfahren. In Schritt 7 haben wir das Steuerflag ``sufficient`` verwendet, um das Verhalten des PAM-Moduls zu bestimmen, wenn der Nitrokey eingesteckt ist oder nicht. Es ist jedoch möglich, dieses Verhalten mit den folgenden Steuerflags zu ändern: Klicken Sie in der linken Ecke auf ``Unlock`` und das würde Sie zur Eingabe Ihres Passwortes auffordern Klicken Sie in der unteren linken Ecke auf ``Anwendungen anzeigen`` und geben Sie in der Suchleiste Einstellungen wie folgt ein: Anweisungen Einführung Es wird empfohlen, die Anweisungen zunächst mit einem einzelnen Benutzer zu testen. Zu diesem Zweck nimmt der vorherige Befehl die Option ``-u``, um einen Benutzer anzugeben, wie im folgenden Beispiel: Melden Sie sich auf der Website an und aktivieren Sie die Zwei-Faktor-Authentifizierung in Ihren Kontoeinstellungen. (In den meisten Fällen finden Sie einen Link zur Dokumentation des unterstützten Webdienstes unter `dongleauth.com <https://www.dongleauth.com/>`__) Nitrokey FIDO U2F Nitrokey FIDO U2F mit Linux Nitrokey FIDO U2F mit Windows Nitrokey FIDO U2F mit macOS Nitrokey FIDO2 konfiguriert nach dieser Anleitung <https://www.nitrokey.com/documentation/installation#p:nitrokey-fido-u2f&os:linux>`__. Beachten Sie, dass die Ausgabe viel länger sein wird, aber sensible Teile wurden hier entfernt. Zur besseren Sicherheit und nachdem die Konfigurationsdatei erzeugt wurde, verschieben wir mit diesem Befehl das Verzeichnis ``.config/Nitrokey`` unter das Verzeichnis ``etc/``: Unter Ubuntu 20.04 ist es möglich, ``libpam-u2f`` direkt aus den offiziellen Repos herunterzuladen Sobald wir mit den Vorbereitungen fertig sind, können wir damit beginnen, den Computer so zu konfigurieren, dass er Nitrokey FIDO2 für die 2nd-Factor-Authentifizierung beim Login und ``sudo`` verwendet. Nachdem wir die ``common-auth`` modifiziert haben, können wir die Datei speichern und beenden. Sobald Sie Schritt 4 beendet haben, sollten Sie fertig sein Wenn Sie die Anweisungen in dieser Anleitung ordnungsgemäß getestet (und ein Backup eingerichtet) haben, wird empfohlen, entweder das Steuerflag ``required`` oder das Steuerflag ``requisite`` anstelle von ``sufficient`` zu verwenden. Sobald Sie den obigen Befehl ausführen, müssen Sie die Taste berühren, während sie blinkt. Sobald dies geschehen ist, wird ``pamu2fcfg`` seine Ausgabe an die ``u2f_keys`` im folgenden Format anhängen: Öffnen Sie eine der `Webseiten, die FIDO U2F unterstützen <https://www.dongleauth.com/>`__. PAM-Module Registrieren Sie Ihren Nitrokey FIDO U2F in den Kontoeinstellungen durch Berühren der Schaltfläche zum Aktivieren des Nitrokey FIDO U2F. Nachdem Sie das Gerät erfolgreich konfiguriert haben, müssen Sie den Nitrokey FIDO U2F bei jeder Anmeldung auf diese Weise aktivieren. Anforderungen Scrollen Sie in der rechten Leiste nach unten zu ``Users`` Wählen Sie ``Administrator`` und geben Sie den Benutzernamen und das Passwort Ihrer Wahl ein Da wir das Central Authentication Mapping verwenden, müssen wir ``pam_u2f`` den Ort der zu verwendenden Datei mit der Option ``authfile`` mitteilen. Die Nitrokey App kann nicht für den Nitrokey FIDO U2F verwendet werden. Der Nitrokey FIDO U2F kann mit jedem aktuellen Browser verwendet werden. Der Nitrokey FIDO U2F unterstützt die **Zwei-Faktor-Authentifizierung (2FA)**. Bei der Zwei-Faktor-Authentifizierung (2FA) wird zusätzlich zum Passwort der Nitrokey FIDO U2F geprüft. Die Ausgabe sollte in etwa wie folgt aussehen: Die Datei unter ``.config/Nitrokey`` muß den Namen ``u2f_keys`` tragen Der letzte Schritt ist die Konfiguration der PAM-Modul-Dateien unter ``/etc/pam.d/``. In dieser Anleitung werden wir die Datei ``common-auth`` modifizieren, da sie die Authentifizierungseinstellungen verwaltet, die für alle Dienste gleich sind, aber andere Optionen sind möglich. Sie können die Datei mit dem folgenden Befehl ändern: Wenn Sie den Nitrokey FIDO U2F zum ersten Mal einstecken, kann Windows einige Zeit benötigen, um das Gerät zu konfigurieren. Die Flags ``required`` und ``requisite`` sorgen für eine strengere Zugriffskontrolle und machen den Nitrokey FIDO2 notwendig, um sich anzumelden und/oder den konfigurierten Dienst zu nutzen. Die folgende Anleitung kann Sie möglicherweise von Ihrem Computer aussperren. Sie sollten sich dieser Risiken bewusst sein, denn es wird empfohlen, die folgenden Anweisungen zuerst auf einem zweiten Computer oder nach einer vollständigen Sicherung anzuwenden. Der sichere Zugriff auf eine solche zentrale Software ist besonders wichtig und kann nun mit dem Nitrokey realisiert werden. Dazu wird der Zugang durch eine Zwei-Faktor-Authentifizierung (2FA) geschützt und kritische Benutzer erhalten einen Nitrokey. Ab sofort wird der Nitrokey bei der Benutzeranmeldung zusätzlich zum Benutzerpasswort geprüft. Phishing-Angriffe werden so vereitelt und Ihre kritischen Unternehmensdaten sind geschützt. Die Zwei-Faktor-Authentifizierung kann mit Einmalpasswörtern (TOTP, RFC 6238) und FIDO U2F durchgeführt werden, so dass Nitrokey Pro, Nitrokey Storage und Nitrokey FIDO U2F verwendet werden können. Es ist auch möglich, die Authentifizierung zentral zu konfigurieren und nur für ausgewählte Benutzer zu aktivieren. Es gibt mehrere PAM-Modul-Dateien, die Sie nach Ihren Bedürfnissen anpassen können: Diese Anleitung führt Sie durch die Konfiguration von Linux zur Nutzung von FIDO Universal 2nd Factor, d.h. FIDO U2F mit ``libpam-u2f`` und `Nitrokey FIDO2 <https://shop.nitrokey.com/shop/product/nk-fi2-nitrokey-fido2-55>`__ . Diese Lösung wurde zusammen mit unserem Partner `initOS <https://www.initos.com/>`__ entwickelt, der auf die Entwicklung und Anpassung von Odoo spezialisiert ist. Wenn Sie Interesse haben, kontaktieren Sie uns bitte. Dieser Schritt ist optional, es wird jedoch empfohlen, einen Backup-Nitrokey für den Fall des Verlusts, Diebstahls oder der Zerstörung Ihres Nitrokey FIDO zu haben. Um die Konfigurationsdatei zu erzeugen, verwenden wir das ``pamu2fcfg``-Dienstprogramm, das mit der ``libpam-u2f`` mitgeliefert wird. Der Einfachheit halber werden wir die Ausgabe des Dienstprogramms direkt in die Datei ``u2f_keys`` unter ``.config/Nitrokey`` schreiben. Schließen Sie zunächst Ihren Nitrokey FIDO2 an (falls noch nicht geschehen), und geben Sie den folgenden Befehl ein: Um einen Backup-Schlüssel einzurichten, wiederholen Sie die obige Prozedur und verwenden ``pamu2fcfg -n``. Dadurch wird das Feld ``<Benutzername>`` weggelassen, und die Ausgabe kann wie folgt an die Zeile mit Ihrem ``<Benutzername>`` angehängt werden: Um zu überprüfen, ob die Bibliothek richtig installiert ist, geben Sie den folgenden Befehl ein: Fehlersuche Zwei-Faktoren-Authentifizierung (2FA) Zwei-Faktor-Authentifizierung für die ERP-Software Odoo Ubuntu 20.04 mit Gnome Display Manager. Unter ``/etc/udev/rules.d`` laden Sie ``41-nitrokey.rules`` herunter Verwendung Video: Zwei-Faktoren-Authentifizierung mit dem Nitrokey FIDO U2F in Odoo Sie können dies mit den folgenden Befehlen tun: Sie können die Konfiguration testen, indem Sie ``sudo ls`` im Terminal eingeben. Sie sollten die Meldung ``Bitte berühren Sie das Gerät.`` erhalten und eine ähnliche Ausgabe im Terminal haben: Nach der Konfiguration von `PAM-Modulen <http://www.linux-pam.org/Linux-PAM-html/>`__ Sie möglicherweise den Zugriff auf Ihre Daten verlieren. Sie werden auch die Möglichkeit verlieren, ``sudo`` zu benutzen, wenn Sie das Central Authentication Mapping einrichten *und* die Flags ``required`` oder ``requisite`` benutzen. Sie werden den Zugriff auf Ihren Computer verlieren, wenn Sie das PAM-Modul falsch konfiguriert *und* die Flags ``required`` oder ``requisite`` verwendet haben. <https://www.nitrokey.com/documentation/applications#p:nitrokey-fido-u2f&os:all>`__ die verschiedenen Anwendungsfälle und unterstützten Applikationen. `Kontakt <https://www.nitrokey.com/contact>`__ `Odoo <https://www.odoo.com/>`__ ist eine leistungsfähige ERP (Enterprise Resource Planning) Software für Unternehmen jeder Größe. Odoo ist als Open Source verfügbar und enthält u.a. Module für CRM, Website/E-Commerce, Buchhaltung, Finanzbuchhaltung, Produktion, Lagerverwaltung, Projektmanagement, Dokumentenmanagement. ``bash nitrouser@nitrouser:~$ sudo ls $ sudo ls [sudo] Passwort für <Benutzername>:  Please touch the device.`` Sie können Ihre Konfiguration auch testen, indem Sie sich aus der Benutzersitzung abmelden und wieder anmelden. Ein ähnlicher Bildschirm sollte angezeigt werden, wenn Sie Ihren Nitrokey FIDO2 ab- bzw. wieder anstecken und Ihr Passwort eingeben: ``optional``: Der Erfolg oder Misserfolg dieses Moduls ist nur dann wichtig, wenn es das einzige Modul im Stack ist, das mit diesem Service+Typ verbunden ist. Das ``optional``-Flag wird als sicher für Testzwecke angesehen. ``erforderlich``: Dies ist das kritischste Flag. Das Modulergebnis muss erfolgreich sein, damit die Authentifizierung fortgesetzt werden kann. Dieses Flag kann Sie von Ihrem Computer aussperren, wenn Sie keinen Zugriff auf den Nitrokey haben. ``required``: Ähnlich wie ``required``, jedoch wird in dem Fall, dass ein bestimmtes Modul einen Fehler zurückgibt, die Kontrolle direkt an die Anwendung oder an den übergeordneten PAM-Stack zurückgegeben. Dieses Flag kann Sie auch aus Ihrem Computer aussperren, wenn Sie keinen Zugriff auf den Nitrokey haben. ``ausreichend``: Das Modulergebnis wird ignoriert, wenn es fehlschlägt. Das ``sufficient``-Flag gilt als sicher für Testzwecke. 