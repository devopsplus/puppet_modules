## To Install Foreman

```
  apt-get install -y puppet-common
  apt-get install -y git
  git clone https://github.corp.ebay.com/thuc-os/puppet_modules.git /tmp/puppet_modules
  puppet apply --modulepath=/tmp/puppet_modules/modules /tmp/puppet_modules/manifests/foreman.pp
```
