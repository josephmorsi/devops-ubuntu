#!/bin/bash
sudo su
sudo echo 'joe ALL=NOPASSWD: ALL' >> /etc/sudoers
sudo apt-get install -y upstart-sysv
sudo apt-get install -y openssh-server
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
sudo chmod a-w /etc/ssh/sshd_config.factory-defaults
sudo restart ssh
sudo apt-get install --assume-yes tree
sudo apt-get install indicator-multiload vim vagrant virtualbox chef puppet ansible tmux mussh multitail mc iptraf netcat links mutt zsh fish jmeter iperf iotop htop traceroute nmap docker ruby python python-pip git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev git build-essential openssl pkg-config nodejs npm -y
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install -g bower grunt-cli
git clone https://github.com/meanjs/mean.git /opt/mean
cd /opt/mean
sudo npm install
cd ~
sudo npm install -g yo
sudo apt-get install --assume-yes openssh-client openssh-server
ssh-keygen -t rsa -C "joe"
sudo cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
sudo chown $USER:$USER $HOME/.ssh/authorized_keys
#cp $HOME/.ssh/id_rsa /media/apollo/6464-31A4/joe.key.pem
mkdir packer
cd packer
wget https://dl.bintray.com/mitchellh/packer/packer_0.8.6_linux_amd64.zip
unzip packer_0.8.6_linux_amd64.zip
sudo apt-get update
sudo apt-get -y install apt-transport-https software-properties-common
sudo add-apt-repository -y "deb https://clusterhq-archive.s3.amazonaws.com/ubuntu/$(lsb_release --release --short)/\$(ARCH) /"
sudo apt-get update
sudo apt-get -y --force-yes install clusterhq-flocker-cli
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-common postgresql-9.3 libpq-dev
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev mysql-workbench
sudo apt-get install -y libsqlite3-dev sqlite3
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get install -y mongodb-org 
sudo apt-get install steam
cd ~/.local/share/Steam/skins/
git clone https://github.com/DirtDiglett/Pressure-for-Steam.git
cd ~
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886
sudo apt-get update -qq
sudo apt-get install spotify-client
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get install kodi
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update -qq
sudo apt-get install -y sublime-text-installer
import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg –I google-chrome-stable_current_amd64.deb
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt-get update -qq
sudo apt-get install -y scudcloud
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
curl -L git.io/omf | sh
sudo npm install phantomjs
echo -e "deb https://s3.amazonaws.com/repo.deb.cyberduck.io stable main" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE7097963FEFBE72
sudo apt-get update
sudo apt-get install -y duck
echo "deb http://downloads.hipchat.com/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
apt-get update
apt-get install -y hipchat
sudo mkdir /opt/telegram && curl https://updates.tdesktop.com/tlinux/tsetup.0.8.52.tar.xz | tar -xf- -C /opt/telegram
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.2.2
rbenv global 2.2.2
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler rails:4.2.1
rbenv rehash


