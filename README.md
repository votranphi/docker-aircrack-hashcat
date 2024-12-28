# Docker, Aircrack and Hashcat in wifi password cracking

![Repo Size](https://img.shields.io/github/repo-size/votranphi/docker-aircrack-hashcat)
![Last Commit](https://img.shields.io/github/last-commit/votranphi/docker-aircrack-hashcat)
![Open Issues](https://img.shields.io/github/issues/votranphi/docker-aircrack-hashcat)
![License](https://img.shields.io/github/license/votranphi/docker-aircrack-hashcat)

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=flat-square&logo=docker&logoColor=white)
![Aircrack-ng](https://img.shields.io/badge/Aircrack--ng-%23FF6600.svg?style=flat-square)
![Hashcat](https://img.shields.io/badge/Hashcat-%23121011.svg?style=flat-square&logo=hashcat&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![Kali Linux](https://img.shields.io/badge/Kali%20Linux-%2355575D.svg?style=flat-square&logo=kali-linux&logoColor=white)
![hcxtools](https://img.shields.io/badge/hcxtools-%23007396.svg?style=flat-square)

This repository includes basic commands and bash scripts to run Docker containers automatically for wifi password cracking using Aircrack and Hashcat.

# Prerequisites
- One Docker Image running Kali Linux has aircrack-ng and hashcat installed.
- One shared Docker Volume has "crack_me" folder in it. Folder's structure:
    ```
    crack_me/
    |-- ap_bssid.txt
    |-- ap_ch.txt
    |-- CrackMe-01-Hash.txt
    |-- CrackMe-01.cap
    |-- CrackMe-01.csv
    |-- CrackMe-01.kismet.csv
    |-- CrackMe-01.kismet.netxml
    |-- CrackMe-01.log.csv
    |-- rockyou.txt
    ```
**For easy preparation, please follow the instruction in "commands.txt" file**

# Installation
Follow these steps:
```bash
git clone https://github.com/votranphi/docker-aircrack-hashcat.git
cd docker-aircrack-hashcat
chmod +x ./aircrack.sh
chmod +x ./hashcat.sh
```

# Usage
To run the password cracking using aircrack-ng:
```bash
./aircrack.sh <number_of_containers_run_parallel>
```
To run the password cracking using hashcat:
```bash
./hashcat.sh <number_of_containers_run_parallel>
```

## License
This project is licensed under the [Apache License 2.0](LICENSE). See the `LICENSE` file for details.