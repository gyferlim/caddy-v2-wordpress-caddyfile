# caddy-v2-wordpress-caddyfile
WordPress Caddyfile for Caddy Server Version 2.0
Instruction is only cater for FreeNAS, or FreeBSD. 
Tested and working on FreeNAS 11.2-U7 and FreeNAS 11.2-U8

Find the Caddy V2 Official Release from here : https://github.com/caddyserver/caddy/releases

a) go the your jail
    at termainal , type > jls
    it should list out your current running jail
b) to enter your jail through therminal
    type >  jexec <num> tcsh 
    example , > jexec 1 tcsh

c) fetch the Caddy program 
    type > fetch https://github.com/caddyserver/caddy/releases/download/v2.0.0/caddy_2.0.0_freebsd_amd64.tar.gz

d) untar the file
    type > tar -xjf caddy_2.0.0_freebsd_amd64.tar.gz

e) confirm the caddy version
    type > ./caddy version
    ## the result should return (as of 5/5/2020) after the h1: is the version, it might be vary. but as long as v2.0.0 you are good
         > v2.0.0 h1:pQSaIJGFluFvu8KDGDODV8u4/QRED/OPyIR+MWYYse8=

f) in case you face file cannot run due to permsion:
    type > chmod 744 caddy
   change the permision of file, so you can run it.

g) copy the file to bin so you can run it anywhere
    type > cp caddy /usr/local/bin

Good Luck and have fun.
