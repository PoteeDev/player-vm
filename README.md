# player-vm

## Setup

### Run Vagrant VM
Deploy player vm based on ubuntu 
```
cd vagrant/ubuntu
vagrant up
```

### Run ansible
```
cd ansible
ansible-galaxy install -r requirements.yaml
ansible-playbook -i inventory platform.yml
```

### Test
```
echo "192.168.56.10 test.example.ru" >> /etc/hosts
ssh test@test.example.ru
# password: 1234
```
Run nginx inside ssh terminal
```
docker run --rm -p 80:80 -d nginx:alpine
```
On Host
```
curl test.example.ru
```