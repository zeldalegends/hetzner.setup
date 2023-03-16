# Setup Server in Hetzner Cloud (Ubuntu 22.04)
1. Start a new server in [Hetzner Cloud Console](https://console.hetzner.cloud/)
2. Clone this repo: ``git clone https://github.com/alinonet/hetzner.setup``.
3. Setup the server: ``./hetzner.setup/init.sh``.
4. Setup Docker Engine: ``./hetzner.setup/docker/install.sh``.
5. OPTIONAL Build and run a *program* as Docker container: ``./hetzner.setup/<program>/run.sh``.
6. OPTIONAL **(NOT RECOMMENDED)** Install and start a *program* as standard process: ``./hetzner.setup/<program>/install.sh``.
## Tested versions
- Ubuntu 22.04.2 LTS
## License
Copyright (C) Alerox, 2023
