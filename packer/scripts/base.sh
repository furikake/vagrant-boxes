# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Fix slow DNS lookups with VirtualBox's DNS proxy:
# https://github.com/mitchellh/vagrant/issues/1172#issuecomment-9438465
echo 'options single-request-reopen' >> /etc/resolv.conf

yum update -y
yum install -y epel-release make kernel-devel perl dkms man ntp curl lsof ansible gcc

# Ansible is on epel so install this after installing epel-release
yum install -y ansible

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config

# Reboot or Guest Additions won't install due to kernel-devel installation
reboot
sleep 30