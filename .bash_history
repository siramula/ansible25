whoami
ssh-keygen
cd .ssh
ls
ssh-copy-id ubuntu@172.31.1.9
ssh-copy-id ubuntu@172.31.6.207
cd
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
ansible --version
cd /etc/ansible/
ls
sudo vim hosts
cd
ansible all -a 'date'
exit
sudo vim /etc/ansible/hosts
free -m
ansible all -i /etc/ansible/hosts -m command -a 'free -m'
ansible all -i /etc/ansible/hosts -m command -a 
vim myinventory
ls
cat file1
ansible all -m shell -a 'free -m > file1'
ls
cat file1
exit
ansible all -m shell -a 'curl -fsSL https://get.docker.com -o install-docker.sh'
ansible all -m shell -a 'sudo sh install-docker.sh'
ssh 172.31.1.9
sudo useradd prashanth
sudo passwd prashanth
sudo /etc/passwd
sudo vim /etc/passwd
exit
sudo vim /etc/ansible/hosts
free -m
ansible all -i /etc/ansible/hosts -m command -a 'free -m'
ansible all -i /etc/ansible/hosts -m command -a 'ls -la'
vim myinventory
ls
cat myinventory 
ansible all -i myinventory -m command 'date'
ansible all -i myinventory -m command -a 'date'
ansible all -m command -a 'free -m'
ls
ansible all -m command -a 'free -m'
ansible all -a 'free -m'
cat file1
ansible all -m shell -a 'free -m >file1'
ssh 172.31.1.9
exit
ansible all -m shell -a 'curl -fsSL https://get.docker.com -o install-docker.sh'
ansible all -m shell -a 'sudo sh install-docker.sh'
ssh 172.31.6.207
sudo useradd prashanth
sudo vim /etc/passwd
ansible all -m user -a 'name=prashanth password=minnu' -b
ansible all -m user -a 'name=prashanth password=prashanth123' -b
sudo passwd prashanth
ansible all -m user -a 'name=prashanth password=prashanth' -b
sudo passwd prashanth
ls
ansible all -m user -a 'name=prashanth password=12345' -b
ssh 172.31.6.207
ansible all -m user -a 'name=minnu password=minnu123 uid=1111 home=tmp/minnu shell=/bin/bash comment="a normal user"' -b
ansible all -m user -a 'name=minnu password=minnu123 uid=1111 home=/tmp/minnu shell=/bin/bash comment="a normal user"' -b
sudo vim /etc/passwd
exit
sudo vim /etc/passwd
ansible all -m user -a 'name=minnu password=minnu123 uid=1111 home=/tmp/minnu shell=/bin/bash comment="a normal user"' -b
ssh 172.31.1.9
ansible all -m file -a 'name=/tmp/file1 state=touch'
ssh 172.31.1.9
ansible all -m file -a 'name=/tmp/dir1 state=directory'
cd /tmp
ls
exit
sudo vim /etc/passwd
ssh 172.31.1.9
ansible all -m file -a 'name=/tmp/dir1 state=absent'
cd /tmp
ls
cd
ssh 172.31.1.9
ansible all -m file -a 'name=/tmp/file1 state=touch owner=prashanth group=minnu mode=754' -b
ssh 172.31.1.9
cat > file100
cat file100
ansible all -m copy -a 'src=file100 dest=/tmp'
ssh 172.31.1.9
ansible all -m copy -a 'content="welcome to spl trainings" dest=/tmp/file100'
ssh 172.31.1.9
ansible all -m copy -a 'src=file100 dest=/tmp owner=prashanth group=root mode=700' -b
ssh 172.31.1.9
mkdir -p d1/d2/d3/d4
ansible all -m copy -a 'src=d1 dest=/tmp'
ssh 172.31.1.9
ansible all -m apt -a 'name=git state=present' -b
ansible all -m apt -a 'name=git state=absent' -b
ssh 172.31.1.9
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m service -a 'name=tomcat9 state=stopped' -b
ansible all -m service -a 'name=tomcat9 started' -b
ansible all -m service -a 'name=tomcat9 state=started' -b
ansible all -m uri -a 'url=http://google.com status_code=200'
ansible all -m uri -a 'url=http://gononoogle.com status_code=200'
exit
ansible all -m get_url -a 'url=https://get.jenkins.io/war-stable/2.440.1/jenkins.war dest=/tmp'
ssh 172.31.1.9
ansible all -m replace -a 'repexp=8080 replace=9090 path=/etc/tomcat9/server.xml' -b
ansible all -m replace -a 'regexp=8080 replace=9090 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m git -a 'repo=https://github.com/siramula/mymaven.git dest=/tmp/mygit'
ansible all -m apt -a 'name=git state=present' -b
ssh 172.31.1.9
ssh 172.31.6.207
ansible all -m git -a 'repo=https://github.com/siramula/mymaven.git dest=/tmp/mygit'
exit
ssh 172.31.1.9
ansible all -m fetch -a 'src=/etc/passwd dest=/tmp' -b
cd /tmp
ls
cd 172.31.1.9
ls
cd /etc
ls
ls -i
ls -l
cd
ansible all -m apt -a 'name=apache2 state=present update_cache=yes' -b
ansible all -m apt -a 'name=apache2 state=present' -b
ansible all -m apt -a 'name=apache2 state=present update_cache=yes' -b
ansible all -m copy -a 'content="welcome to prashanth spl trainings" dest=/var/www/html/index.html' -b
ansible all -m service -a 'name=apache2 state=restarted' -b
ansible all -m uri -a 'url=http://172.31.1.9 status_code=200'
ansible all -m uri -a 'url=http://172.31.6.207 status_code=200'
ansible all -m apt -a 'name=tomcat9 state=absent purge=yes' -b
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ansible all -m apt -a 'name=tomcat9-admin state=present' -b
vim tomcat user.xml
ls
ansible all -m copy -a 'src=tomcat dest=/etc/tomcat9' -b
ssh 172.31.6.207
ansible all -m replace -a 'regexp=8080
cd

ansible all -m replace -a 'regexp=8080 replace=9090 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 status=restarted' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m uri -a 'url=http://172.31.6.207:9090 status_code=200' -b
ansible all -m uri -a 'url=http://172.31.1.9 :9090 status_code=200' -b
ansible all -m uri -a 'url=http://172.31.1.9:9090 status_code=200' -b
exit
mkdir playbooks
cd playbooks/
ls
vim playbook1.yml
ansible-playbook playbook1.yml --syntax-check
ansible-playbook playbook1.yml -b
vim playbook1.yml 
vim playbook2.yml 
ansible-playbook playbook2.yml -b
ansible all -m apt -a 'name=tomcat9-admin state=absent purge=yes' -b
vim playbook3.yml
ls
cd ..
ls
cat tomact
cat tomcat-user.xml
sudo vim tomcat-user.xml
cat tomcat-user.xml
cp tomcat-user.xml playbooks/
cd playbooks/
ls
vim playbook3.yml
ansible-playbook playbook3.yml -b
vim playbook3.yml
ansible-playbook playbook3.yml -b
vim playbook3.yml
ansible-playbook playbook3.yml -b
vim playbook3.yml
ansible-playbook playbook3.yml -b
vim playbook3.yml
ansible-playbook playbook3.yml -b
vim playbook4.yml
ansible-playbook playbook4.yml -b
ssh 172.31.1.9 
vim playbook5.yml
ansible-playbook playbook5.yml -b
cd /tmp
ls
cd 172.31.1.9 
ls
cat file100
pwd
cd
cd playbooks/
vim playbook5.yml
ansible-playbook playbook5.yml -b
vim playbook5.yml
ansible-playbook playbook5.yml -b
vim playbook5.yml
ansible-playbook playbook5.yml 
vim playbook5.yml
ansible-playbook playbook5.yml 
ssh 172.31.6.207
git add . 
git init
git add .
git commit -m "playbook"
git remote add origin https://github.com/siramula/ansible.git
git push -u origin master
git remote add origin https://github.com/siramula/ansible.git
git init
git add .
git commit -m "ansibleplaybook"
git status
git push -u origin master
ls
cd playbooks/
ls
vim playbook6.yml
ansible-playbook playbook6.yml -b --extra-vars "a=git b=absent c=no"
ansible-playbook playbook6.yml -b --extra-vars "a=maven b=present c=yes"
vim playbook6.yml
vim playbook7.yml
ansible-playbook playbook6.yml -b --extra-vars "a=paramesh b=paramesh123 c=/tmp/paramesh d=/tmp/paramesh/file1 e=touch"
vim playbook7.yml
ansible-playbook playbook7.yml -b --extra-vars "a=paramesh b=paramesh123 c=/tmp/paramesh d=/tmp/paramesh/file1 e=touch"
ansible-playbook playbook7.yml -b --extra-vars "a=hareesh b=hareesh123 c=/tmp/hareesh d=/tmp/hareesh/dir1 e=directory"
ssh 172.31.1.9
vim playbook8.yml
ansible-playbook playbook8.yml -b 
ansible-playbook playbook8.yml -b --extra-vars "a=maven b=absent c=no"
ansible-playbook playbook8.yml -b --extra-vars "a=git"
exit
cd .ssh
ls
sudo vim id_rsa.pub
ssh 172.31.5.73
sudo vim id_rsa.pub
ssh 172.31.0.113
cd /etc/ansible
sudo vim hosts
ansible all -a 'date'
sudo vim hosts
ansible dbserver 0-a 'date'
ansible dbserver -a 'date'
cd playbooks/
cd
cd playbooks/
vim playbook1.yml
ansible-playbook playbook1.yml -b
cd /etc/ansible/
sudo vim hosts
ansible servers -a 'date'
cd
cd playbooks/
ls
mkdir group_vars
cd group_vars/
ls
vim webserver
ls
cat webserver 
cd ..
ls
vim playbook9.yml
vim webserver
vim group_vars/
cd group_vars/
vim webserver 
cd ..
ansible-playbook playbook9.yml -b
ls
git add .
git commit -b "playbookansible2"
git commit -m "b'
git push
git add .
git commit -m "playbookb"
git  push
exit
cd .ssh
ls
sudo vim id_rsa.pub
cd /etc/ansible/
sudo vim hosts
ssh 172.31.1.9
ssh 172.31.6.207
cd
ansible all -a 'date'
ls
git clone https://github.com/siramula/ansible.git
ls
cd ansible/
ls
cd group_vars/

cd ..
pwd
ls
mkdir host_vars
cd host_vars/
ls
cd ..
cd group_vars/
vim webserver 
cd ..
cd host_vars/
vim 172.31.6.207
pwd
ls
ssh 

cd ..
ls
vim playbook10.yml
ansible-playbook playbook10.yml -b
ssh 172.31.6.207
ansible-playbook playbook10.yml -b
vim playbook10.yml
ansible-playbook playbook10.yml -b
sudo vim id_rsa.pub
vim 172.31.6.207
ssh 172.31.1.9
vim playbook11.yml
vim playbook10.yml
ssh 172.31.1.9
ssh 172.31.6.207
ls
cd ansible/
ls
cd group_vars/
ls
cd host_vars/
cd ..
vim playbook11.yml
ansible-playbook playbook11.yml -b
vim playbook11.yml
vim playbook12.yml
ansible-playbook playbook12.yml -b
vim playbook13.yml
ansible-playbook playbook13.yml -b
vim playbook12.yml
vim playbook3.yml
cp playbook3.yml playbook14.yml
vim playbook14.yml 
ansible-playbook playbook14.yml -b
vim playbook14.yml 
ansible-playbook playbook14.yml -b
vim playbook14.yml 
ansible-playbook playbook14.yml -b
vim playbook14.yml 
ansible-playbook playbook14.yml -b
vim playbook14.yml 
ansible-playbook playbook14.yml -b
ssh 172.31.6.207
ls
ssh 172.31.6.207
ssh 172.31.1.9
ansible all -a 'date'
pwd
sudo vim /etc/ssh/sshd_config
ssh 172.31.6.207
ssh 172.31.1.9
ansible all -a 'date'
cd .ssh
ls
cd /etc/ansible/
sudo vim hosts
ssh 172.31.1.9
ssh 172.31.6.207
cd
ansible all -a 'date'
ls
git clone https://github.com/siramula/ansible.git
ls
cd ansible/
ls
cd group_vars/
ls
cd ..
pwd
ls
mkdir host_vars/
cd host_vars/
ls
cd 172.31.6.207
vim 172.31.6.207
ls
cat 172.31.6.207
cd ..
ls
cat playbook10.yml
vim playbook10.yml
ansible-playbook playbook10.yml -b
vim playbook10.yml
ansible-playbook playbook10.yml -b
vim playbook10.yml
ansible-playbook playbook10.yml -b
ls
vim playbook10.yml
ansible-playbook playbook10.yml -b
cat playbook10.yml
vim playbook11.yml
ansible-playbook playbook11.yml -b
vim playbook12.yml
