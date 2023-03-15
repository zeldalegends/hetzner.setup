# Setup Server in Hetzner Cloud (Ubuntu 22.04)
1. Start a new server in [Hetzner Cloud Console](https://console.hetzner.cloud/)
2. Clone this repo: ``git clone https://github.com/alinonet/hetzner.setup``.
3. Setup the server: ``./hetzner.setup/init.sh``.
4. Setup Docker Engine: ``./hetzner.setup/docker/install.sh``.
5. OPTIONAL Build and start any ***container***: ``./hetzner.setup/<container>/run.sh``.
6. OPTIONAL Install and run any ***program***: ``./hetzner.setup/<program>/install.sh``.
## Tested versions
- Ubuntu 22.04.2 LTS
## License
Copyright (C) Alerox, 2023
