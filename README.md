# Vagrant Ubuntu Webserver
These three files quickly set up my preferred environment for web development, using Vagrant an Virtual box.
The webserver comprises of:
* Ubuntu (18.04/Bionic Beaver)
* Apache 2
* PHP 7.2
* MySQL

Lines 61 and 62 of Vagrantfile set the virtual machine up with 512MB RAM and 1 CPU, I have done this to match the AWS t2.micro machine I use for production, but you can change this to match your requirements if needed.

## To Use
* If not already installed on your machine, install [Vagrant](https://www.vagrantup.com/downloads.html), [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant Hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater).
* Clone this repository: `git clone https://github.com/LewisCraik/vagrant-ubuntu-webserver.git yourfoldername`
(Or copy the three files, "Vagrantfile", "bootstrap.sh" and "mysql_secure_installation.sql" to your project folder).
* (Optional) Edit the desired IP address for your server on line 35 of Vagrantfile. - It is best to have a unique IP address for each time you create a new server.
* Change the hostname for your server on line 36 of Vagrantfile. This is what you will type in your webbrowser to access the webserver.
* Replace "YourDBPassword" with your chosen database password on line 1 of mysql_secure_installation.sql.
* From your project folder in your terminal type `vagrant up` - this may take a while to execute the first time, as all the files will need ot be downloaded.
* Navigate to http://your.hostname (or whatever you defined in line 36 of Vagrantfile), you should see the Apache default page.
* Add you source code (or even install your CMS of choice) in to the "Content" folder, which is where Apache will serve from.
