base:
  '*':
    - http
    - postgres.postgis
    - core
    - version-control
    - python
    - supervisor
    - redis
    - memcached
    - mysite

  'vagrant-demo*':
    - mysite.vagrant
