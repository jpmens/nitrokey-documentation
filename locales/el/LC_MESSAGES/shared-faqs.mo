��    \      �              �  2  �  !     9   2  @  l     �  �   �    �	  d  �
     J     �  K   �  *   "  5   M  3   �  )   �  '   �  !   	     +  5   G  &   }     �     �  &   �  '   �  !   &      H  -   i  4   �  -   �  =   �  �   8  2        7  �   N  �   K     3     A     S     e     {     �     �     �     �     �     �  �     �  �  �   �  
   L  
   W     b  <   q  �   �  �   �  �   n  _     �   v  d   T    �     �     �  <   �       ;   5     q     �    �  �   �    m   #  q!  �   �"  N  [#    �$  �   �%  |   �&  "   '  d   ;'     �'  D   �'     (     (  
   8(     C(     K(     S(     [(     c(     k(     s(     {(  �  (  u  a*  .   �,  W   -  �  ^-  @   X0  �   �0  �  I1  q  �2  �   l4     U5  v   g5  c   �5  ^   B6  `   �6  [   7  3   ^7  D   �7  ?   �7  X   8  M   p8  %   �8  )   �8  a   9  Y   p9  l   �9  b   7:  E   �:  p   �:  W   Q;  v   �;  B   <  7   c=  "   �=  N  �=  �  @     �A     B     B  )   (B  *   RB     }B  8   �B  5   �B  5   C     BC     FC  �  KC  �  �D    �H  
   8J  
   CJ     NJ  �   ]J    �J  �  �L  :  tN  �   �O  �  }P  �   gR  *  IS     tU     �U  �   �U  0   EV  y   vV  ]   �V     NW  M  [W  �  �[    Q]  X  Y_    �a    �c  �  �e    �g  �   �i  G   �j  �   k     l  g   :l  5   �l  C   �l  
   m     'm     /m     7m     ?m     Gm     Om     Wm     _m   **Admin PIN:** The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). **Administrator PIN:** "12345678" **Firmware Password** (Nitrokey Storage only): "12345678" **Firmware password:** The firmware password should meet general password recommandations (e.g. use alphabetic characters, digits and special characters or use a usfficiently long password). The firmware password is needed to update the firmware of the Nitrokey Storage. See further instructions for update process here. **Letter and Registered Mail**: **Nitrokey HSM2:** The security controler's hardware and operating system are Common Criteria certified (`Security Target`_; `HSM2 Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP JCOP 3 P60"). **Nitrokey HSM:** The security controler's hardware and operating system are Common Criteria certified (`HSM Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). **Nitrokey Storage 1+2:** `Cure53`_ has performed an `independent security audit`_ of the hardware, firmware, and Nitrokey App. **Parcel**: **Q:** Do Nitrokeys contain a secure chip or just a normal microcontroller? **Q:** How fast is encryption and signing? **Q:** How good is the Random Number Generator (RNG)? **Q:** How is the Bitcoin exchange rate calculated? **Q:** How large is the storage capacity? **Q:** How long does the shipping take? **Q:** How many keys can I store? **Q:** How to return goods? **Q:** Is Nitrokey Common Criteria or FIPS certified? **Q:** Is there a Right of Withdrawal? **Q:** Is there a warranty? **Q:** Pricing and VAT **Q:** What are the default passwords? **Q:** What can I use the Nitrokey for? **Q:** What is the Admin PIN for? **Q:** What is the User PIN for? **Q:** What is the maximum length of the PIN? **Q:** What is user/admin/firmware PIN/password for? **Q:** Which Operating Systems are supported? **Q:** Which algorithms and maximum key length are supported? **SO PIN:** The SO PIN is used in the Nitrokey HSM only and is something like a "master" PIN with special properties. Please read this instructions carefully to understand the SO PIN of the Nitrokey HSM. **SO-PIN** (Nitrokey HSM only): "3537363231383830" **User PIN:** "123456" **User PIN:** The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. At the time of ordering, our system takes the exchange rate from blockchain.info and adds 10% on top of it. The 10% are for our handling fees (exchanging Bitcoins back to Euro) and for the risk implicated by floating exchange rate. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 business days EU: 5-10 business days Frequently Asked Questions Generic Nitrokeys FAQ Germany: 1-3 business days Germany: 2-5 business days HSM HSM2 If you want to have a backup of your keys, you need to think about it when creating the keys. More information and options for the key creation can be found in our :doc:`documentation <../pro/linux/openpgp>`. In case of a hardware defect, you can contact us and we will send you a shipping label. Pack the device in an air cushion envelope (not in an ordinary envelope!). Include the delivery slip or printout of the invoice with the shipment. Add a note of the reason for the return, e.g. "Withdrawal of the purchase" or "Exchange due to defect". It is sufficient to note the reason in handwriting on the enclosed invoice or delivery note. Address the mailing to our address. It depends. No one can copy the keys which are stored on the Nitrokey. But depending on the key creation process you can still store a backup of the keys elsewhere. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM can store 20 RSA-2048 and 31 ECC-256 key pairs. Nitrokey Pro's and Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey Pro, Nitrokey HSM and Nitrokey Storage contain a tamper resistant smart card. To some extent this also applies to Nitrokey U2F but it's of lower quality. Nitrokey Start is implemented in the microprocessor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM and Nitrokey U2F don't contain storage capability for ordinary data (it can only store cryptographic keys and certificates). Nitrokey Storage can store and encrypt 8, 32, or 64 GB of data (depending on particular model). Nitrokey Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey U2F stores a single ECC key pair but can be used with an unlimited amount of user accounts. Nitrokey uses PINs instead of passwords. The main difference is that the hardware limits the amount of tries to three while a limit doesn't exist for passwords. Because of this, a short PIN is still secure and there is not need to choose a long and complex PIN. Pro + Storage Pro 2 + Storage 2 See the `frontpage`_ for an overview of supported use cases. See the following table: See the relevant product faq for details: (@todo add links) Shop and Delivery FAQ Start The Nitrokey GmbH has a heterogeneous customer base, private and enterprise customers, from Germany as well as inside and outside of the EU. With the pricing we want to ensure that all customers pay a uniform rate. For example, a large international corporation should pay just as much as a German private customer. Accordingly, the gross price (incl. VAT) for German private customers equals the net price (excluding VAT) for EU enterprise customers and all customers outside of the EU. This approach has been audited and is legally correct. The Nitrokey Pro, Nitrokey Start and Nitrokey Storage can store three RSA key pairs. All keys use the same identity but are used for different purposes: authentication, encryption and signing. The admin PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the admin PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have 8 digits PIN. The default PIN is 12345678. The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). The firmware password is never blocked. An attacker could try to guess the password and would have unlimited attempts. Therefore you must choose a strong password. The default password is 12345678. The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). The user PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the user PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have a 6 digits PIN. The default PIN is 123456. The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. There is a Right for most customers. Further details can be found here (https://www.nitrokey.com/right-withdrawal-consumers) To return a goods (e.g. Nitrokey): We strongly recommend to change these PINs/password to user-chosen values before using the Nitrokey. Windows, Linux, and Mac OS X. Windows, Linux, and Mac OS X. Also some support (FIDO2) for Android. World wide: 2-3 weeks World wide: 5-10 business days curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-06 01:52+0200
PO-Revision-Date: 2022-01-06 20:42+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: el
Language-Team: Greek <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-shared-faqs/el/>
Plural-Forms: nplurals=2; plural=n != 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **ΠΙΝ διαχειριστή:** Το PIN διαχειριστή είναι τουλάχιστον 8ψήφιο και χρησιμοποιείται για την αλλαγή των περιεχομένων/ρυθμίσεων του Nitrokey. Δηλαδή, μετά την αρχικοποίηση του Nitrokey πιθανότατα δεν θα χρειάζεστε αυτό το PIN πολύ συχνά (π.χ. αν θέλετε να προσθέσετε έναν άλλο κωδικό πρόσβασης στο χρηματοκιβώτιο κωδικών πρόσβασης του Nitrokey Pro ή του Nitrokey Storage). **ΠΙΝ διαχειριστή:** "12345678", **Κωδικός πρόσβασης firmware** (μόνο Nitrokey Storage): "12345678", **Κωδικός πρόσβασης υλικολογισμικού:** Ο κωδικός πρόσβασης υλικολογισμικού θα πρέπει να πληροί τις γενικές συστάσεις για τον κωδικό πρόσβασης (π.χ. χρήση αλφαβητικών χαρακτήρων, ψηφίων και ειδικών χαρακτήρων ή χρήση ενός επαρκώς μεγάλου κωδικού πρόσβασης). Ο κωδικός πρόσβασης υλικολογισμικού απαιτείται για την ενημέρωση του υλικολογισμικού του Nitrokey Storage. Δείτε περαιτέρω οδηγίες για τη διαδικασία ενημέρωσης εδώ. **Επιστολή και συστημένη επιστολή**: **Nitrokey HSM2:** Βλέπε `εδώ`_, κάντε κλικ στο "ICs, Smart Cards and Smart Card-Related Devices and Systems"και αναζητήστε "NXP JCOP 3 P60"). **Nitrokey HSM:** Το υλικό και το λειτουργικό σύστημα του ελεγκτή ασφαλείας είναι πιστοποιημένα βάσει των κοινών κριτηρίων (`HSM Report`_; Δείτε `εδώ`_, κάντε κλικ στο "ICs, Smart Cards and Smart Card-Related Devices and Systems" και αναζητήστε "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** Δείτε `εδώ`_, κάντε κλικ στο "ICs, Smart Cards and Smart Card-Related Devices and Systems", και αναζητήστε "NXP Smart Card Controller P5CD081V1A και τις κύριες διαμορφώσεις του P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A και P5CD016V1A κάθε μία με IC dedicated Software"). **Nitrokey Storage 1+2:** `Η "Cure53" πραγματοποίησε έναν `ανεξάρτητο έλεγχο ασφαλείας του υλικού, του υλικολογισμικού και της εφαρμογής Nitrokey. **Πακέτο**: **Q:** Τα Nitrokeys περιέχουν ένα ασφαλές τσιπ ή έναν απλό μικροελεγκτή; **Q:** Πόσο γρήγορη είναι η κρυπτογράφηση και η υπογραφή; **Q:** Πόσο καλή είναι η γεννήτρια τυχαίων αριθμών (RNG); **Q:** Πώς υπολογίζεται η συναλλαγματική ισοτιμία Bitcoin; **Q:** Πόσο μεγάλη είναι η χωρητικότητα αποθήκευσης; **Q:** Πόσο διαρκεί η αποστολή; **Q:** Πόσα κλειδιά μπορώ να αποθηκεύσω; **Q:** Πώς επιστρέφονται τα προϊόντα; **Q:** Είναι το Nitrokey πιστοποιημένο με Common Criteria ή FIPS; **Ερώτηση:** Υπάρχει δικαίωμα υπαναχώρησης; **Q:** Υπάρχει εγγύηση; **Q:** Τιμολόγηση και ΦΠΑ **Q:** Ποιοι είναι οι προεπιλεγμένοι κωδικοί πρόσβασης; **Q:** Για ποιο λόγο μπορώ να χρησιμοποιήσω το Nitrokey; **Ερώτηση:** Για ποιο λόγο χρησιμοποιείται το PIN διαχειριστή; **Ερώτηση:** Για ποιο λόγο χρησιμοποιείται το PIN χρήστη; **Q:** Ποιο είναι το μέγιστο μήκος του PIN; **Ερώτηση:** Τι είναι ο κωδικός χρήστη/διαχειριστή/firmware PIN/password; **Q:** Ποια λειτουργικά συστήματα υποστηρίζονται; **Q:** Ποιοι αλγόριθμοι και μέγιστο μήκος κλειδιού υποστηρίζονται; **SO PIN:** Το SO PIN χρησιμοποιείται μόνο στο Nitrokey HSM και είναι κάτι σαν ένα "master" PIN με ειδικές ιδιότητες. Διαβάστε προσεκτικά τις παρούσες οδηγίες για να κατανοήσετε το SO PIN του Nitrokey HSM. **SO-PIN** (μόνο Nitrokey HSM): "3537363231383830", **ΠΙΝ χρήστη:** "123456", **ΠΙΝ χρήστη:** Το PIN χρήστη είναι τουλάχιστον 6ψήφιο και χρησιμοποιείται για την πρόσβαση στο περιεχόμενο του Nitrokey. Αυτό είναι το PIN που θα χρησιμοποιείτε συχνά σε καθημερινή χρήση, π.χ. για την αποκρυπτογράφηση μηνυμάτων, για το ξεκλείδωμα του κρυπτογραφημένου αποθηκευτικού χώρου σας (μόνο για τον αποθηκευτικό χώρο NK) κ.λπ. Κατά τη στιγμή της παραγγελίας, το σύστημά μας λαμβάνει την ισοτιμία συναλλάγματος από το blockchain.info και προσθέτει 10% σε αυτήν. Το 10% είναι για τα έξοδα χειρισμού μας (ανταλλαγή Bitcoins πίσω σε ευρώ) και για τον κίνδυνο που συνεπάγεται η κυμαινόμενη συναλλαγματική ισοτιμία. Brainpool 192 Brainpool 256-320 Brainpool 384-521 ΕΕ: 2-5 εργάσιμες ημέρες ΕΕ: 5-10 εργάσιμες ημέρες Συχνές ερωτήσεις Γενικές Συχνές ερωτήσεις Nitrokeys Γερμανία: 1-3 εργάσιμες ημέρες Γερμανία: 2-5 εργάσιμες ημέρες HSM HSM2 Αν θέλετε να έχετε ένα αντίγραφο ασφαλείας των κλειδιών σας, πρέπει να το σκεφτείτε κατά τη δημιουργία των κλειδιών. Περισσότερες πληροφορίες και επιλογές για τη δημιουργία κλειδιών μπορείτε να βρείτε στο :doc:`documentation <../pro/linux/openpgp>`. Σε περίπτωση ελαττώματος υλικού, μπορείτε να επικοινωνήσετε μαζί μας και θα σας στείλουμε μια ετικέτα αποστολής. Συσκευάστε τη συσκευή σε ένα φάκελο με μαξιλάρι αέρα (όχι σε ένα συνηθισμένο φάκελο!). Συμπεριλάβετε το δελτίο αποστολής ή την εκτύπωση του τιμολογίου μαζί με την αποστολή. Προσθέστε μια σημείωση για τον λόγο της επιστροφής, π.χ. "Ανάκληση της αγοράς" ή "Ανταλλαγή λόγω ελαττώματος". Αρκεί να σημειώσετε τον λόγο χειρόγραφα στο συνημμένο τιμολόγιο ή δελτίο αποστολής. Να απευθύνετε την αλληλογραφία στη διεύθυνσή μας. Εξαρτάται. Κανείς δεν μπορεί να αντιγράψει τα κλειδιά που είναι αποθηκευμένα στο Nitrokey. Όμως, ανάλογα με τη διαδικασία δημιουργίας κλειδιών, μπορείτε να αποθηκεύσετε ένα αντίγραφο ασφαλείας των κλειδιών αλλού. NIST-P 192 NIST-P 256 NIST-P 384-521 Το Nitrokey HSM μπορεί να αποθηκεύσει 20 ζεύγη κλειδιών RSA-2048 και 31 ζεύγη κλειδιών ECC-256. Τα PIN των Nitrokey Pro's και Storage's μπορούν να έχουν μήκος έως και 20 ψηφία και να αποτελούνται από αριθμούς, χαρακτήρες και ειδικούς χαρακτήρες. Σημείωση: Όταν χρησιμοποιείτε το GnuPG ή το OpenSC, μπορούν να χρησιμοποιηθούν PINs μήκους 32 χαρακτήρων, αλλά δεν υποστηρίζονται από την εφαρμογή Nitrokey App. Τα Nitrokey Pro, Nitrokey HSM και Nitrokey Storage περιέχουν μια έξυπνη κάρτα ανθεκτική στην παραβίαση. Σε κάποιο βαθμό αυτό ισχύει και για το Nitrokey U2F, αλλά είναι χαμηλότερης ποιότητας. Το Nitrokey Start υλοποιείται στον μικροεπεξεργαστή. Τα Nitrokey Pro, Nitrokey Start, Nitrokey HSM και Nitrokey U2F δεν περιέχουν δυνατότητα αποθήκευσης συνηθισμένων δεδομένων (μπορούν να αποθηκεύσουν μόνο κρυπτογραφικά κλειδιά και πιστοποιητικά). Το Nitrokey Storage μπορεί να αποθηκεύσει και να κρυπτογραφήσει 8, 32 ή 64 GB δεδομένων (ανάλογα με το συγκεκριμένο μοντέλο). Τα PIN της Nitrokey Storage μπορούν να έχουν μήκος έως και 20 ψηφία και να αποτελούνται από αριθμούς, χαρακτήρες και ειδικούς χαρακτήρες. Σημείωση: Όταν χρησιμοποιείτε το GnuPG ή το OpenSC, μπορούν να χρησιμοποιηθούν PIN με 32 χαρακτήρες, αλλά δεν υποστηρίζονται από την εφαρμογή Nitrokey App. Το Nitrokey U2F αποθηκεύει ένα μόνο ζεύγος κλειδιών ECC, αλλά μπορεί να χρησιμοποιηθεί με απεριόριστο αριθμό λογαριασμών χρηστών. Το Nitrokey χρησιμοποιεί PIN αντί για κωδικούς πρόσβασης. Η κύρια διαφορά είναι ότι το υλικό περιορίζει τον αριθμό των προσπαθειών σε τρεις, ενώ για τους κωδικούς πρόσβασης δεν υπάρχει όριο. Εξαιτίας αυτού, ένα σύντομο PIN εξακολουθεί να είναι ασφαλές και δεν χρειάζεται να επιλέξετε ένα μακρύ και πολύπλοκο PIN. Pro + Αποθήκευση Pro 2 + Αποθήκευση 2 Ανατρέξτε στην `frontpage`_ για μια επισκόπηση των υποστηριζόμενων περιπτώσεων χρήσης. Δείτε τον ακόλουθο πίνακα: Ανατρέξτε στο σχετικό faq του προϊόντος για λεπτομέρειες: (@todo add links) Συχνές ερωτήσεις για το κατάστημα και την παράδοση Έναρξη Η Nitrokey GmbH έχει μια ετερογενή πελατειακή βάση, ιδιωτικούς και επιχειρηματικούς πελάτες, από τη Γερμανία καθώς και εντός και εκτός της ΕΕ. Με την τιμολόγηση θέλουμε να διασφαλίσουμε ότι όλοι οι πελάτες πληρώνουν μια ενιαία τιμή. Για παράδειγμα, μια μεγάλη διεθνής επιχείρηση θα πρέπει να πληρώνει το ίδιο ποσό με έναν Γερμανό ιδιώτη πελάτη. Κατά συνέπεια, η ακαθάριστη τιμή (συμπεριλαμβανομένου του ΦΠΑ) για τους Γερμανούς ιδιώτες πελάτες ισούται με την καθαρή τιμή (χωρίς ΦΠΑ) για τους επιχειρηματικούς πελάτες της ΕΕ και όλους τους πελάτες εκτός ΕΕ. Η προσέγγιση αυτή έχει ελεγχθεί και είναι νομικά ορθή. Τα Nitrokey Pro, Nitrokey Start και Nitrokey Storage μπορούν να αποθηκεύσουν τρία ζεύγη κλειδιών RSA. Όλα τα κλειδιά χρησιμοποιούν την ίδια ταυτότητα, αλλά χρησιμοποιούνται για διαφορετικούς σκοπούς: πιστοποίηση ταυτότητας, κρυπτογράφηση και υπογραφή. Το PIN διαχειριστή μπορεί να έχει έως και 20 ψηφία και άλλους χαρακτήρες (π.χ. αλφαβητικούς και ειδικούς χαρακτήρες). Καθώς όμως το PIN διαχειριστή μπλοκάρεται μόλις γίνουν τρεις λανθασμένες προσπάθειες για το PIN, είναι αρκετά ασφαλές να έχετε μόνο 8 ψηφία PIN. Το προεπιλεγμένο PIN είναι 12345678. Το PIN διαχειριστή είναι τουλάχιστον 8ψήφιο και χρησιμοποιείται για την αλλαγή περιεχομένου/ρυθμίσεων του Nitrokey. Αυτό σημαίνει ότι μετά την αρχικοποίηση του Nitrokey πιθανόν να μην χρειάζεστε αυτό το PIN πολύ συχνά (π.χ. αν θέλετε να προσθέσετε έναν άλλο κωδικό πρόσβασης στο χρηματοκιβώτιο κωδικών πρόσβασης του Nitrokey Pro ή του Nitrokey Storage). Ο κωδικός πρόσβασης υλικολογισμικού δεν μπλοκάρεται ποτέ. Ένας εισβολέας θα μπορούσε να προσπαθήσει να μαντέψει τον κωδικό πρόσβασης και θα είχε απεριόριστες προσπάθειες. Επομένως, πρέπει να επιλέξετε έναν ισχυρό κωδικό πρόσβασης. Ο προεπιλεγμένος κωδικός πρόσβασης είναι 12345678. Το υλικό του ελεγκτή ασφαλείας είναι πιστοποιημένο με Common Criteria (`Report`_; Βλέπε `εδώ`_, κάντε κλικ στο "ICs, Smart Cards and Smart Card-Related Devices and Systems"ICs, Smart Cards and Smart Card-Related Devices and Systems", και αναζητήστε "NXP Smart Card Controller P5CD081V1A και τις κύριες διαμορφώσεις του P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A και P5CD016V1A κάθε μία με IC dedicated Software"). Το PIN χρήστη μπορεί να έχει έως και 20 ψηφία και άλλους χαρακτήρες (π.χ. αλφαβητικούς και ειδικούς χαρακτήρες). Καθώς όμως το PIN χρήστη μπλοκάρεται μόλις γίνουν τρεις λανθασμένες προσπάθειες για το PIN, είναι αρκετά ασφαλές να έχετε μόνο ένα PIN με 6 ψηφία. Το προεπιλεγμένο PIN είναι 123456. Το PIN χρήστη είναι τουλάχιστον 6ψήφιο και χρησιμοποιείται για την πρόσβαση στο περιεχόμενο του Nitrokey. Αυτό είναι το PIN που θα χρησιμοποιείτε συχνά στην καθημερινή σας χρήση, π.χ. για την αποκρυπτογράφηση μηνυμάτων, για το ξεκλείδωμα του κρυπτογραφημένου αποθηκευτικού χώρου σας (μόνο NK Storage) κ.λπ. Υπάρχει ένα Δικαίωμα για τους περισσότερους πελάτες. Περισσότερες λεπτομέρειες μπορείτε να βρείτε εδώ (https://www.nitrokey.com/right-withdrawal-consumers) Για να επιστρέψετε ένα αγαθό (π.χ. Nitrokey): Σας συνιστούμε να αλλάξετε αυτούς τους κωδικούς PIN/κωδικούς πρόσβασης σε τιμές που έχει επιλέξει ο χρήστης πριν χρησιμοποιήσετε το Nitrokey. Windows, Linux και Mac OS X. Windows, Linux και Mac OS X. Επίσης, κάποια υποστήριξη (FIDO2) για Android. Σε όλο τον κόσμο: 2-3 εβδομάδες Σε όλο τον κόσμο: 5-10 εργάσιμες ημέρες curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ 