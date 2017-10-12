@echo off
db2cmd cc
set /p id="Bitte ID des GP eingeben: "
call db2 connect to prokas2 user DBS1 using DBS1
call db2 update prokas.e_gp_bearb_spez set gp_bearb_pw='@@' where gp_nr=%id%
call db2 connect reset
exit 0
