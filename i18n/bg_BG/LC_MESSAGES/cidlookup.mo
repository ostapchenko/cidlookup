��            )   �      �  �  �               )  7   A     y     �  $   	  '   .     V     n  .   w  
   �     �     �     �  
   �     �     �  &   �  0     o   N  �   �  1   F  P   x  &   �     �     �      !  
  
   ;     F     ^  f   v  �   �     �  A   �  ]   *  )   �     �  V   �          )  '   <     d     m  *   �     �  -   �  D   �  �   +  �     b   �  �   O  B   �     )     A                         	                                                 
                                                                A Lookup Source let you specify a source for resolving numeric CallerIDs of incoming calls, you can then link an Inbound route to a specific CID source. This way you will have more detailed CDR reports with information taken directly from your CRM. You can also install the phonebook module to have a small number <-> name association. Pay attention, name lookup may slow down your PBX Admin CallerID Lookup CallerID Lookup Sources Checking for cidlookup field in core's incoming table.. Decide whether or not cache the results to astDB; it will overwrite present values. It does not affect Internal source behavior ERROR: failed:  Enter a description for this source. FATAL: failed to transform old routes:  Host name or IP address Internal Migrating channel routing to Zap DID routing.. MySQL Host MySQL Password MySQL Username None Not Needed Not yet implemented OK Password to use in HTTP authentication Path of the file to GET<br/>e.g.: /cidlookup.php Query string, special token '[NUMBER]' will be replaced with caller number<br/>e.g.: number=[NUMBER]&source=crm Query, special token '[NUMBER]' will be replaced with caller number<br/>e.g.: SELECT name FROM phonebook WHERE number LIKE '%[NUMBER]%' Removing deprecated channel field from incoming.. There are %s DIDs using this source that will no longer have lookups if deleted. Username to use in HTTP authentication not present removed Project-Id-Version: FreePBX v2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-02-20 19:07-0500
PO-Revision-Date: 2014-12-04 19:29+0200
Last-Translator: Chavdar <chavdar_75@yahoo.com>
Language-Team: Bulgarian <http://git.freepbx.org/projects/freepbx/cidlookup/bg_BG/>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: bg_BG
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 1.10-dev
X-Poedit-Language: Bulgarian
X-Poedit-Country: BULGARIA
X-Poedit-SourceCharset: utf-8
 Източникът на Следене ви позволява да определите източник за анализиране на цифрови CallerID-та на входящите обаждания, след което можете да свържете Входящ Маршрут с определен CID източник. По този начин ще имате по-детайлни CDR отчети с информация взета директно от CRM. Също така можете да инсталирате модула Телефонен Указател за да имате някаква номер <-> име асоциация. Имайте предвид, че следенето може да натовари вашата телефонна централа Админ CallerID Следене CallerID Следене Проверка за cidlookup поле в таблицата за входящи на ядрото.. Преценете дали да кеширате или не резултатите в astDB; това ще отмени настоящите настройки. Не се отразява на  Вътрешните източници ГРЕШКА: неуспех:  Въведете описание за този източник. ГРЕШКА: не мога да трансформирам старите маршрути:  Ине на хост или IP адрес Вътрешен Преместване на маршрут на канал в Zap DID маршрут.. MySQL Хост MySQL Парола MySQL Потребителско Име Няма Не е Необходимо Все още не е реализиран OK Парола за HTTP оторизиране Път до файла за GET<br/>например: /cidlookup.php Стринг за запитване, определеното означение '[NUMBER]' ще бъде заменено с номера на обаждащия се<br/>например: number=[NUMBER]&source=crm Запитване, определеното означение '[NUMBER]' ще бъде заменено с номера на обаждащия се<br/>например: SELECT name FROM phonebook WHERE number LIKE '%[NUMBER]%' Премахване полета на неизползвани канали от входящи.. Има %s DID използващи този източник, които няма да могат да се следят ако го изтриете. Потребителско Име за HTTP оторизиране не присъства премахнат 