# portfolio
Portfolio of work

This is a Chef Development of a role that installs yum, epel, a sudoers file, chef dependency files and then installs nginx on port 8888
Along with that it sets up the basic website that can be viewed by going to the servers IP at port 8888.  IE http://192.168.0.1:8888/index.html

For a demo, please provide a vm IP address with ssh open and a username and password.  I will bootstrap the server via chef and it will autoinstall this chef cookbook and role.

Included:
        ops-nwea
            yum
            epel
            sudo
            selinux
            nginx
                service provider
                provision.sh (For basic chef implementation)

This is work in progress.  Refinements will be made soon.

Please forward questions to slcstoic@hotmail.com