# Kiểm tra NFS đã cài chưa
dpkg -l | grep nfs
# Nếu chưa có, cài (dùng apt thay vì rpm vì hệ thống là Ubuntu/Debian)
sudo apt update
sudo apt install -y nfs-kernel-server nfs-common rpcbind
dpkg -l | grep rpcbind
rpcinfo -p localhost   # Nếu có output là OK
sudo mkdir -p /usr/share /soft
sudo chmod -R 755 /usr/share /soft
sudo nano /etc/exports
sudo exportfs -a
sudo exportfs -v     # Kiểm tra
sudo exportfs -ra
sudo exportfs -v
showmount -e localhost
sudo rpcbind -w
sudo /etc/init.d/nfs-kernel-server start
# hoặc
sudo service nfs-kernel-server start
rpcinfo -p localhost | grep nfs
rpcinfo -p localhost | grep portmapper
# 1. Khởi động rpcbind
sudo rpcbind -w
# 2. Khởi động NFS
sudo /etc/init.d/nfs-kernel-server start
# hoặc
sudo service nfs-kernel-server start
# 3. Kiểm tra lại
rpcinfo -p localhost
rpcinfo -p localhost | grep -E "portmapper|nfs"
sudo killall -9 rpcbind nfsd rpc.mountd 2>/dev/null
sudo rpcbind -w
sudo /usr/sbin/rpc.mountd
sudo /usr/sbin/rpc.nfsd 8
sudo exportfs -ra
rpcinfo -p localhost
sudo exportfs -v
showmount -e localhost
sudo tail -n 20 /var/log/syslog | grep -E "nfs|rpc|mountd"
# Kiểm tra export
sudo exportfs -v
# Kiểm tra ai đang mount
showmount -e localhost
showmount -a
# Kiểm tra trạng thái NFS
rpcinfo -p localhost
# Kiểm tra process liên quan
ps aux | grep -E "nfs|rpc|mountd"
mount | grep nfs
df -hT
showmount -e localhost
exportfs -v
who
w
top
dpkg -l | grep nfs
sudo apt update
sudo apt install -y nfs-kernel-server nfs-common rpcbind
dpkg -l | grep rpcbind
rpcinfo -p localhost
sudo mkdir -p /usr/share /soft
[200~sudo chmod -R 755 /usr/share /soft~
sudo chmod -R 755 /usr/share /soft
sudo nano /etc/exports
sudo exportfs -ra
sudo exportfs -v
showmount -e localhost
sudo rpcbind -w
sudo /etc/init.d/nfs-kernel-server start
rpcinfo -p localhost | grep nfs
rpcinfo -p localhost | grep portmapper
sudo exportfs -v
showmount -e localhost
sudo tail -n 20 /var/log/syslog | grep -E "nfs|rpc|mountd"
mount | grep nfs
df -hT
showmount -e localhost
exportfs -v
who
w
top
dpkg -l | grep nfs
sudo apt update
sudo apt install -y nfs-kernel-server nfs-common rpcbind
dpkg -l | grep rpcbind
rpcinfo -p localhost
sudo mkdir -p /usr/share /soft
sudo chmod -R 755 /usr/share /soft
sudo nano /etc/exports
sudo exportfs -ra
sudo exportfs -v
showmount -e localhost
dpkg -l | grep nfs
sudo apt update
sudo apt install -y nfs-kernel-server nfs-common rpcbind
dpkg -l | grep rpcbind
rpcinfo -p localhost
sudo mkdir -p /usr/share /soft
sudo chmod -R 755 /usr/share /soft
sudo nano /etc/exports
sudo exportfs -ra
sudo exportfs -v
showmount -e
showmount -e localhost
rpcinfo -p localhost | grep nfs
rpcinfo -p localhost | grep portmapper
sudo exportfs -v
showmount -e localhost
sudo tail -n 20 /var/log/syslog | grep -E "nfs|rpc|mountd"
sudo exportfs -v
mount | column -t
sudo exportfs -v
showmount -e localhost
sudo tail -n 20 /var/log/syslog | grep -E "nfs|rpc|mountd"
mount | column -t
df -hT
mount | column -t
df -hT
mount | grep nfs
df -hT
showmount -e localhost
exportfs -v
who
w
top
