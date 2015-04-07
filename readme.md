####Pre-Requirements
- vagrant
- virtualbox

####Description
Vagrant installs a base linux box "kikitux/oracle6" - (https://github.com/kikitux),  and with a simple shell script, provisions machine 
that installs node and core workshop packages from http://nodeschool.io/
These are:
- learnyounode 
- javascripting 
- git-it 
- how-to-npm 
- stream-adventure

"These workshops focus on essential skills for working with node.js" - http://nodeschool.io/ 

####Notes
An optional file proxy.env can be added if you happen to work behind a proxy server (see the top of provision.sh). Insert into proxy.env the following with your values:
```bash
export http_proxy=http://<domain>%5C<username>:<pwd>@<proxy server>:<port>
export https_proxy=http://<domain>%5C<username>:<pwd>@<proxy server>:<port>
```
