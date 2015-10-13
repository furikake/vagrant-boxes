# Vagrant Base Boxes

Forked in order to include:

- CentOS 6.7
- Ansible instead of Puppet and Chef

## How these boxes were built

These boxes were automatically built using [packer](http://www.packer.io) (v0.6.0) and the definitions in this repo:

```sh
$ cd packer
$ ./build.sh
```

```sh
$ vagrant box add CentOS-6.7-x86_64-v`date +"%Y%m%d"`.box --name CentOS-6.7 --force
```