��    :      �              �  9   �     �          !  �   8  L   5  �   �  �     N   �  L   �  D   G  �   �  c   H  M   �  /  �  �   *
  �   �
  8  �  G   �  #   	     -  �   >     �    �  �   �  �   �  ]     z   {  ?   �  �   6     �     �     �          '  �   ;  C     C   O     �  �   �     ]     }  �   �  �   �  >     �   G  Q   	  S   [  �   �  #   J     n  W   �  I   �     '  0   C  ?   t      �  �  �  �   �  <   9  H   v  (   �  ;  �  �   $  0  �  $  	!  �   ."  �   �"  �   k#  �  
$  �   �%  �   7&  o  �&  �  Y(  G  �)  �  -+  �   �-  M   }.     �.  N  �.     :0    O0  �  d2  )  '4  �   Q5  �   �5  ?   �6  �  /7     �8  '   �8     9     9     .9  �  B9  �   �:  �   v;  L   <  >  X<  L   �=  '   �=  (  >    5@  s   9A  �  �A  �   }C  �   ?D    �D  (   F  :   /F  W   jF  �   �F  L   iG  X   �G  ?   H  F   OH   **Q:** What is the default hard-disk encryption password? Boot Entry Has Changed Boot Hash Mismatch Booting from USB drive Booting this USB drive entirely erases all data on the hard disk or SSD of the NitroPad without further warning. Don’t boot this USB drive on any computer which contains data you want to keep. Make sure to format the USB drive after the intended use. Change the passphrase for disk encryption by opening a terminal and execute: Check each screw individually to see if its individual appearance matches the photo. It is best to use a magnifying glass or macro lens for this purpose. Confirm the message with Enter to have the files changed by the system update verified. Afterwards you will be asked again for a confirmation. Confirm the question "Do you wish to add a disk encryption to the TPM" with N. Confirm the question "Please confirm that your GPG card is inserted" with Y. Confirm the question "Saving a default will modify the disk" with Y. Connect the USB drive to a black USB 2.0 socket (blue USB 3.0 don't work!), start the PC and keep pressing DEL until you see the firmware menu. Choose Boot Menu and select your USB drive. Connect the USB drive to your NitroPad and start it. In Heads menu select Boot Options -> USB Boot. Depending on the operating system you may need to confirm its reinstallation. Download one of the operating system images: `Ubuntu Linux <https://www.nitrokey.com/files/ci/nitropc/ubuntu-oem/>`_, `Qubes OS <https://www.nitrokey.com/files/ci/nitropc/qubes-oem/>`_, `Debian <https://www.nitrokey.com/files/ci/nitropc/debian-oem/>`_, `Linux Mint <https://linuxmint.com/download.php>`_ During boot of the system the error "Failed to start Load Kernel Modules" is displayed. `This is a known issue <https://github.com/QubesOS/qubes-issues/issues/2638>`_ which is not critical and can be ignored. During boot, the system will prompt you to enter the passphrase to decrypt the hard disk. Enter the default passphrase “PleaseChangeMe”. During boot, the system will prompt you to enter the passphrase to decrypt the hard disk. Enter the default passphrase “PleaseChangeMe”. The system will then guide you through the process of creating a user account. After that you should have successfully booted the system and could already use it normally. Enter the User PIN of the Nitrokey whenever prompted (default: 123456). Failed to start Load Kernel Modules First check the: First confirm the error message shown above. Then we see a list of all possible boat entries - choose the first one by simply pressing Enter. Getting Started Heads expects an English keyboard layout, on which e.g. “y” and “z” are swapped in comparison to the German keyboard layout. If you agree with the default selection (which is written in capital letter) you can also simply confirm by pressing Enter. If the bag or the screws do not match the photos sent, an unauthorized opening of your NitroPC cannot be excluded. In this case please contact us to arrange further action. If you ordered your NitroPC with sealed screws and in a sealed bag, it allows you to check if the NitroPC has been tampered with during shipping. If you press Enter afterwards, you will get an error message that looks like this or similar: If you restart the NitroPad after an update, the startup screen should initially appear as usual without an error message. Linux: ``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_; Next, either another error message appears or the operating system starts. This depends on the system update. If the following error message appears, proceeds as described below: NitroPC NitroPC FAQ NitroPC with Debian NitroPC with Qubes OS NitroPC with Ubuntu Now insert the Nitrokey if this is not already the case and confirm with Enter. Then you must enter the User PIN of the Nitrokey (default: 123456). You will not see the characters you typed in on the screen. Now the NitroPad marks the files changed by the update as verified. Now the Nitrokey has to be plugged in, if this is not yet the case. Operating System Reinstallation Optional: Download hash sum and `verify <https://proprivacy.com/guides/how-why-and-when-you-should-hash-check#how-to-hash-check>`_ the downloaded operating system image. Procedure After a System Update System update The NitroPad watches for changes to important system files to detect third-party tampering. This means that special steps are sometimes necessary when updating the system. This can often be recognized by the fact that the system prompts you to reboot. The bag and all screws of the device have been sealed. For the bag and each of these screws you have received a photo by e-mail. The default NitroPC disk encryption password: "PleaseChangeMe" The system has a user account setup already. Choose it and login with the default passphrase "PleaseChangeMe". You may keep using the existing user account or create you a new one, as you like. This example shows a sealed screw whose glitter represents an individual pattern. To avoid accidential overwriting of valuable data, format the USB drive afterwards. To save this value as default, select the option “Make Ubuntu the default” for Ubuntu or “Make Qubes the default” for Qubes OS in the next window. Using WIFI (with RTL8821ce chipset) Verify Sealed Hardware Windows: `Rufus <https://rufus.ie/>`_, `balenaEtcher <https://www.balena.io/etcher/>`_; Write the operating system image to any USB drive. Possible applications: Your system will then boot. `Sign the boot partition. <system-update.html>`_ macOS: ``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_. or choose your operating system: Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-06 20:42+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: el
Language-Team: Greek <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitropc/el/>
Plural-Forms: nplurals=2; plural=n != 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Q:** Ποιος είναι ο προεπιλεγμένος κωδικός κρυπτογράφησης σκληρού δίσκου; Η είσοδος εκκίνησης έχει αλλάξει Αντιστοιχία κατακερματισμού εκκίνησης Εκκίνηση από μονάδα USB Η εκκίνηση αυτής της μονάδας USB διαγράφει πλήρως όλα τα δεδομένα στον σκληρό δίσκο ή τον SSD του NitroPad χωρίς περαιτέρω προειδοποίηση. Μην εκκινήσετε αυτή τη μονάδα USB σε οποιονδήποτε υπολογιστή που περιέχει δεδομένα τα οποία θέλετε να διατηρήσετε. Φροντίστε να διαμορφώσετε τη μονάδα USB μετά την προβλεπόμενη χρήση. Αλλάξτε τη φράση πρόσβασης για την κρυπτογράφηση δίσκου ανοίγοντας ένα τερματικό και εκτελώντας: Ελέγξτε κάθε βίδα ξεχωριστά για να δείτε αν η εμφάνισή της ταιριάζει με τη φωτογραφία. Για το σκοπό αυτό είναι καλύτερο να χρησιμοποιήσετε μεγεθυντικό φακό ή φακό macro. Επιβεβαιώστε το μήνυμα με Enter για να επαληθευτούν τα αρχεία που έχουν αλλάξει από την ενημέρωση του συστήματος. Στη συνέχεια θα σας ζητηθεί εκ νέου επιβεβαίωση. Επιβεβαιώστε την ερώτηση "Επιθυμείτε να προσθέσετε κρυπτογράφηση δίσκου στην TPM" με N. Επιβεβαιώστε την ερώτηση "Παρακαλώ επιβεβαιώστε ότι η κάρτα GPG είναι τοποθετημένη" με Y. Επιβεβαιώστε την ερώτηση "Η αποθήκευση μιας προεπιλογής θα τροποποιήσει το δίσκο" με Y. Συνδέστε τη μονάδα USB σε μια μαύρη υποδοχή USB 2.0 (το μπλε USB 3.0 δεν λειτουργεί!), εκκινήστε τον υπολογιστή και συνεχίστε να πατάτε DEL μέχρι να εμφανιστεί το μενού firmware. Επιλέξτε Boot Menu (Μενού εκκίνησης) και επιλέξτε τη μονάδα USB. Συνδέστε τη μονάδα USB στο NitroPad και εκκινήστε το. Στο μενού Heads επιλέξτε Boot Options -> USB Boot. Ανάλογα με το λειτουργικό σύστημα μπορεί να χρειαστεί να επιβεβαιώσετε την επανεγκατάστασή του. Κατεβάστε μία από τις εικόνες του λειτουργικού συστήματος: `Ubuntu Linux <https://www.nitrokey.com/files/ci/nitropc/ubuntu-oem/>`_, `Qubes OS <https://www.nitrokey.com/files/ci/nitropc/qubes-oem/>`_, `Debian <https://www.nitrokey.com/files/ci/nitropc/debian-oem/>`_, `Linux Mint <https://linuxmint.com/download.php>`_ Κατά την εκκίνηση του συστήματος εμφανίζεται το σφάλμα "Απέτυχε να ξεκινήσει η φόρτωση μονάδων πυρήνα". `Αυτό είναι ένα γνωστό πρόβλημα <https://github.com/QubesOS/qubes-issues/issues/2638>`_ το οποίο δεν είναι κρίσιμο και μπορεί να αγνοηθεί. Κατά την εκκίνηση, το σύστημα θα σας ζητήσει να εισαγάγετε τη φράση πρόσβασης για την αποκρυπτογράφηση του σκληρού δίσκου. Εισάγετε την προεπιλεγμένη συνθηματική φράση "PleaseChangeMe". Κατά την εκκίνηση, το σύστημα θα σας ζητήσει να εισαγάγετε τη φράση πρόσβασης για την αποκρυπτογράφηση του σκληρού δίσκου. Εισάγετε την προεπιλεγμένη συνθηματική φράση "PleaseChangeMe". Στη συνέχεια, το σύστημα θα σας καθοδηγήσει στη διαδικασία δημιουργίας ενός λογαριασμού χρήστη. Μετά από αυτό θα πρέπει να έχετε εκκινήσει επιτυχώς το σύστημα και θα μπορείτε ήδη να το χρησιμοποιείτε κανονικά. Εισάγετε τον κωδικό PIN χρήστη του Nitrokey όποτε σας ζητηθεί (προεπιλογή: 123456). Απέτυχε να ξεκινήσει η Φόρτωση Modules πυρήνα Πρώτα ελέγξτε το: Πρώτα επιβεβαιώστε το μήνυμα σφάλματος που εμφανίζεται παραπάνω. Στη συνέχεια, εμφανίζεται μια λίστα με όλες τις πιθανές καταχωρήσεις σκάφους - επιλέξτε την πρώτη πατώντας απλώς Enter. Ξεκινώντας Το Heads περιμένει μια αγγλική διάταξη πληκτρολογίου, στην οποία π.χ. τα "y" και "z" είναι ανταλλαγμένα σε σύγκριση με τη γερμανική διάταξη πληκτρολογίου. Εάν συμφωνείτε με την προεπιλεγμένη επιλογή (η οποία είναι γραμμένη με κεφαλαία γράμματα), μπορείτε επίσης απλά να επιβεβαιώσετε πατώντας Enter. Εάν η τσάντα ή οι βίδες δεν ταιριάζουν με τις φωτογραφίες που έχουν αποσταλεί, δεν μπορεί να αποκλειστεί το μη εξουσιοδοτημένο άνοιγμα του NitroPC σας. Σε αυτή την περίπτωση, παρακαλούμε επικοινωνήστε μαζί μας για να κανονίσουμε περαιτέρω ενέργειες. Εάν παραγγείλατε το NitroPC σας με σφραγισμένες βίδες και σε σφραγισμένη σακούλα, σας επιτρέπει να ελέγξετε εάν το NitroPC έχει αλλοιωθεί κατά τη διάρκεια της αποστολής. Αν πατήσετε Enter στη συνέχεια, θα λάβετε ένα μήνυμα σφάλματος που μοιάζει με αυτό ή παρόμοιο: Εάν επανεκκινήσετε το NitroPad μετά από μια ενημέρωση, η οθόνη εκκίνησης θα πρέπει αρχικά να εμφανιστεί ως συνήθως χωρίς μήνυμα σφάλματος. Linux: ``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_, Στη συνέχεια, είτε εμφανίζεται άλλο ένα μήνυμα σφάλματος είτε ξεκινάει το λειτουργικό σύστημα. Αυτό εξαρτάται από την ενημέρωση του συστήματος. Εάν εμφανιστεί το ακόλουθο μήνυμα σφάλματος, προχωρήστε όπως περιγράφεται παρακάτω: NitroPC Συχνές ερωτήσεις NitroPC NitroPC με Debian NitroPC με Qubes OS NitroPC με Ubuntu Εισάγετε τώρα το κλειδί Nitrokey, αν δεν είναι ήδη έτοιμο, και επιβεβαιώστε με Enter. Στη συνέχεια, πρέπει να εισαγάγετε τον κωδικό PIN χρήστη του Nitrokey (προεπιλογή: 123456). Δεν θα δείτε τους χαρακτήρες που πληκτρολογήσατε στην οθόνη. Τώρα το NitroPad επισημαίνει τα αρχεία που έχουν αλλάξει από την ενημέρωση ως επαληθευμένα. Τώρα το Nitrokey πρέπει να είναι συνδεδεμένο στην πρίζα, αν αυτό δεν έχει γίνει ακόμα. Επανεγκατάσταση λειτουργικού συστήματος Προαιρετικά: Λήψη του αθροίσματος κατακερματισμού και ` επαλήθευση <https://proprivacy.com/guides/how-why-and-when-you-should-hash-check#how-to-hash-check>`_ της εικόνας του λειτουργικού συστήματος που κατεβάσατε. Διαδικασία μετά από ενημέρωση συστήματος Ενημέρωση συστήματος Το NitroPad παρακολουθεί τις αλλαγές σε σημαντικά αρχεία του συστήματος για να ανιχνεύει την αλλοίωση από τρίτους. Αυτό σημαίνει ότι μερικές φορές απαιτούνται ειδικά βήματα κατά την ενημέρωση του συστήματος. Αυτό μπορεί συχνά να αναγνωριστεί από το γεγονός ότι το σύστημα σας ζητά να κάνετε επανεκκίνηση. Η σακούλα και όλες οι βίδες της συσκευής έχουν σφραγιστεί. Για τη σακούλα και κάθε μία από αυτές τις βίδες έχετε λάβει μια φωτογραφία μέσω e-mail. Ο προεπιλεγμένος κωδικός κρυπτογράφησης δίσκου NitroPC: "PleaseChangeMe", Το σύστημα έχει ήδη εγκαταστήσει έναν λογαριασμό χρήστη. Επιλέξτε τον και συνδεθείτε με την προεπιλεγμένη φράση πρόσβασης "PleaseChangeMe". Μπορείτε να συνεχίσετε να χρησιμοποιείτε τον υπάρχοντα λογαριασμό χρήστη ή να δημιουργήσετε έναν νέο, όπως επιθυμείτε. Αυτό το παράδειγμα δείχνει μια σφραγισμένη βίδα της οποίας η λάμψη αντιπροσωπεύει ένα μεμονωμένο μοτίβο. Για να αποφύγετε την τυχαία αντικατάσταση πολύτιμων δεδομένων, διαμορφώστε τη μονάδα USB στη συνέχεια. Για να αποθηκεύσετε αυτή την τιμή ως προεπιλεγμένη, επιλέξτε την επιλογή "Make Ubuntu the default" για το Ubuntu ή "Make Qubes the default" για το Qubes OS στο επόμενο παράθυρο. Χρήση WIFI (με chipset RTL8821ce) Επαλήθευση σφραγισμένου υλικού Windows: `Rufus <https://rufus.ie/>`_, `balenaEtcher <https://www.balena.io/etcher/>`_, Γράψτε την εικόνα του λειτουργικού συστήματος σε οποιαδήποτε μονάδα USB. Πιθανές εφαρμογές: Στη συνέχεια, το σύστημά σας θα εκκινήσει. `Υπογράψτε το διαμέρισμα εκκίνησης. <system-update.html>`_ macOS: ``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_. ή επιλέξτε το λειτουργικό σας σύστημα: 