FROM adminer:4.7.9-standalone

ADD --chown=adminer:adminer \
  https://github.com/dracula/adminer/raw/master/theme/adminer.css \
  designs/dracula/
