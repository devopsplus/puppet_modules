## To Install Foreman

```
  apt-get install -y puppet-common
  apt-get install -y git
  git clone this_repo /tmp/puppet_modules
  puppet apply --modulepath=/tmp/puppet_modules/modules /tmp/puppet_modules/manifests/foreman.pp
```
