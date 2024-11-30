# Docker, Aircrack and Hashcat in wifi password cracking
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
chmod +x ./hashcat
```

# How to use
To run the password cracking using aircrack-ng:
```bash
./aircrack.sh <number_of_containers_run_parallel>
```
To run the password cracking using hashcat:
```bash
./hashcat.sh <number_of_containers_run_parallel>
```