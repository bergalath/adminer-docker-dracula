FROM adminer

ADD --chown=adminer:adminer \
  https://github.com/dracula/adminer/raw/master/theme/adminer.css \
  designs/dracula/
