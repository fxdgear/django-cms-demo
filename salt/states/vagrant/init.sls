include:
  - python

/home/vagrant/mysite.com:
  virtualenv.managed:
    - no_site_packages: True
    - distribute: True
    - cwd: /home/vagrant/mysite.com
    - requirements: /home/vagrant/mysite.com/mysite/requirements.txt
    - require:
        - pkg: python-pkgs
