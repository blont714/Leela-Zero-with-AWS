@echo off
set plink_path="C:\Program Files\PuTTY\plink.exe"
set key_path="C:\Users\#User#\Desktop\\aws-key01.ppk"
set server_ip=#ip_address#

echo yes | %plink_path% -ssh -i %key_path% ubuntu@%server_ip% exit
%plink_path% -ssh -i %key_path% ubuntu@%server_ip% cd leela-zero; ./leelaz --gtp --lagbuffer 0 --weights elf.gz --threads 2
