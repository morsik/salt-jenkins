include:
  - python.pip


hgtools:
  pip.installed:
  - bin_env: {{ salt['config.get']('virtualenv_path', '') }}
  - cwd: {{ salt['config.get']('pip_cwd', '') }}
  - require:
    - cmd: pip-install
