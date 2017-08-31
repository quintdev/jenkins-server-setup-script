# Jenkins Install Script
This script allows you to easily get Jenkins up and running on a server.

It uses the official Jenkins docker image.

The easiest way to use it it to `wget` the setup script and run it on the server:

`wget https://raw.githubusercontent.com/quintdev/jenkins-server-setup-script/master/setup.sh`

And then run it:

`sh setup.sh`

Jenkins should now be accessible by normally browsing to the server, either by by IP or domain if DNS is setup. 