FROM adminer:4.8.0-standalone

ADD --chown=adminer:adminer \
  https://github.com/bergalath/dracula-adminer-theme/raw/main/theme/adminer.css \
  designs/dracula/
