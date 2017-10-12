:: Dieses Script hilft bei der Zurücksetzung des Kennworts für einen Geschäftspartner
:: Bitte direkt auf dem Datenbankserver (PRODBS1?) ausführen.
:: Anschließend muss das Kennwort neu eingerichtet werden, sonst ist kein Login möglich
::
:: Getestet unter PROKAS 7.00
:: Keine Haftung oder Gewährleistung - alles auf eigene Gefahr!

@echo off
set /p id="Bitte ID des GP eingeben: "
db2cmd cc
call db2 connect to prokas2 user DBS1 using DBS1
call db2 update prokas.e_gp_bearb_spez set gp_bearb_pw='@@' where gp_nr=%id%
call db2 connect reset
exit 0
