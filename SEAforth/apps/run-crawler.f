cr .( $Id: run-crawler.f,v 1.1.2.3 2006-09-23 05:36:10 randy Exp $ ) \ run test
include ../t18/compatibility.f

cd ../t18

include t18x.f       \ load compiler and simulator
cd ../bios
decimal

include rombios.mf   \ 1/24/06 load ROM BIOS code

hex
init

cd ../apps 
include crawler.mf
\ switching makes it easier to load file utilities
cd ../t18            

t' test to bootadr 

initnode                 \ initialize the t18 simulator
hex

