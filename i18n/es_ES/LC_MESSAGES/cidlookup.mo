��          �   %   �      P  �  Q     �     �  7   �     3     �  $   �  '   �       .   (  
   W     b     q     �  
   �     �     �  &   �  0   �  o   �  �   o  1   �  &   )     P     \  �  d  �  5	  &   �
     �
  ?     �   M     �  -   �  5        H  9   a     �     �     �     �     �  ,   �       5     :   T  �   �  �     2   �  ;   �     ;  	   M                  
                                                                                   	                        A Lookup Source let you specify a source for resolving numeric CallerIDs of incoming calls, you can then link an Inbound route to a specific CID source. This way you will have more detailed CDR reports with information taken directly from your CRM. You can also install the phonebook module to have a small number <-> name association. Pay attention, name lookup may slow down your PBX CallerID Lookup CallerID Lookup Sources Checking for cidlookup field in core's incoming table.. Decide whether or not cache the results to astDB; it will overwrite present values. It does not affect Internal source behavior ERROR: failed:  Enter a description for this source. FATAL: failed to transform old routes:  Host name or IP address Migrating channel routing to Zap DID routing.. MySQL Host MySQL Password MySQL Username None Not Needed Not yet implemented OK Password to use in HTTP authentication Path of the file to GET<br/>e.g.: /cidlookup.php Query string, special token '[NUMBER]' will be replaced with caller number<br/>e.g.: number=[NUMBER]&source=crm Query, special token '[NUMBER]' will be replaced with caller number<br/>e.g.: SELECT name FROM phonebook WHERE number LIKE '%[NUMBER]%' Removing deprecated channel field from incoming.. Username to use in HTTP authentication not present removed Project-Id-Version: FreePBX - módulo cidlookup module spanish translation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-02-20 19:07-0500
PO-Revision-Date: 2011-04-14 00:00+0100
Last-Translator: Juan Asensio Sánchez <okelet@gmail.com>
Language-Team: Juan Asensio Sánchez <okelet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: Spanish
X-Poedit-Country: SPAIN
X-Poedit-SourceCharset: utf-8
 Una fuente de búsqueda le permite utilizar una fuente para identificar el número de la persona que llama en las llamadas entrantes. De esta forma tendrá informes más detallados con la información extraida de su CRM. Puede instalar también el módulo "Listín telefónico" para tener una relación número <-> nombre. Tenga cuidado, ya que la búsqueda de nombres puede penalizar el rendimiento de su PBX Búsqueda de identificador de llamante Búsqueda de llamantes Comprobando el campo cidlookup en la table entrante del núcleo Decide si se ponen los resultados de astDB en cache o no; sobrescribira los valores actuales. No afecta el comportamiento de la fuente interna. ERROR: Introduzca una descripción para este origen. FATAL: No se pudieron transformar las rutas antiguas: Nombre del servidor o IP Migrando enrutamiento del canal a enrutamiento DID Zap... Servidor MySQL Contraseña MySQL: Nombre de usuario MySQL: Ninguno No es necesario Este método no se ha implementado todavía. OK Contraseña que se usará en la autentificación HTTP Ruta del archivo a obtener<br/>Por ejemplo, /cidlookup.php Cadena de la consulta, el campo "[NUMBER]" sera sustituido con el número de la persona que llama.<br/>Por ejemplo, number=[NUMBER]&source=crm Cadena de la consulta, el campo "[NUMBER]" sera sustituido con el número de la persona que llama.<br/>Por ejemplo, SELECT name FROM phonebook WHERE number LIKE '%[NUMBER]%' Eliminando campo de canal obsoleto de entrantes... Nombre de usuario que se usará en la autentificación HTTP no está presente eliminado 