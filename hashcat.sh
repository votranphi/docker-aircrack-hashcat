#!/bin/bash

# Calculate number of line that's used to split the rockyou.txt
NO_LINE=$((14344393/$1+1))

# Run a busybox connects to shared volume to split the rockyou.txt file inside it, base on number of lines
docker run --rm -it --name tmp_ctn --user nhom13 --workdir /home/nhom13/crack_me --volume crack_me:/home/nhom13/crack_me worker:latest split -l $NO_LINE --numeric-suffixes=1 --additional-suffix=.txt rockyou.txt chunk_;

# Create and run containers to crack the password
for ((i = 1; i <= $1; i++)); do
	if [[ $i -ge 1 && $i -le 9 ]]; then
		docker run -d --name "worker-$i" -u nhom13 -w /home/nhom13/crack_me -v crack_me:/home/nhom13/crack_me worker:latest hashcat -m 22000 CrackMe-01-Hash.txt "chunk_0$i.txt";
	else
		docker run -d --name "worker-$i" -u nhom13 -w /home/nhom13/crack_me -v crack_me:/home/nhom13/crack_me worker:latest hashcat -m 22000 CrackMe-01-Hash.txt "chunk_$i.txt";
	fi
done
