root@proxmoxs01:~# cat /etc/hosts
127.0.0.1 localhost.localdomain localhost
192.168.73.128 proxmoxs01.cn proxmoxs01
192.168.73.129 proxmoxs02.cn proxmoxs02

root@proxmoxs01:~# cat /etc/hostname 
proxmoxs01
pvecm create oatos

步骤外：互加密钥
ssh-keygen -t rsa
ssh-copy-id -i /root/.ssh/id_rsa.pub root@proxmoxs01.cn
ssh root@proxmoxs02.cn


root@proxmoxs02:~# cat /etc/hosts
127.0.0.1 localhost.localdomain localhost
192.168.73.128 proxmoxs01.cn proxmoxs01
192.168.73.129 proxmoxs02.cn proxmoxs02

root@proxmoxs02:~# cat /etc/hostname 
proxmoxs02

步骤外：互加密钥
ssh-keygen -t rsa
ssh-copy-id -i /root/.ssh/id_rsa.pub root@proxmoxs01.cn
ssh root@proxmoxs02.cn

pvecm add proxmoxs01.cn

