sudo apt-get -y update
sudo adduser --system --home=/opt/dotcomerp --group dotcomerp
sudo su - dotcomerp -s /bin/bash
sudo apt-get -y install postgresql
sudo apt-get -y install python-dateutil python-feedparser python-gdata python-ldap python-libxslt1 python-lxml python-mako python-openid python-psycopg2 python-pybabel python-pychart python-pydot python-pyparsing python-reportlab python-simplejson python-tz python-vatnumber python-vobject python-webdav python-werkzeug python-xlwt python-yaml python-zsi
sudo apt-get -y install python-pip
sudo pip install werkzeug==0.8.3
sudo apt-get -y install gnupg
sudo pip install python-gnupg
sudo wget http://nightly.odoo.com/old/openerp-6.1/6.1.0/openerp-6.1-1.tar.gz
sudo mv openerp-6.1-1.tar.gz /opt/dotcomerp/
cd /opt/dotcomerp/
sudo tar xvfz openerp-6.1-1.tar.gz
sudo mv openerp-6.1-1 server
sudo chown -R dotcomerp: *
sudo cp /opt/dotcomerp/server/install/openerp-server.conf /etc/
sudo chown dotcomerp: /etc/openerp-server.conf
sudo chmod 640 /etc/openerp-server.conf
sudo mkdir /var/log/dotcomerp
sudo chown dotcomerp:root /var/log/dotcomerp
apt-get install python-imaging
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get -y update
sudo apt-get -y install python-certbot-nginx
sudo apt-get -y install nginx