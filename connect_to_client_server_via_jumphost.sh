#! /bin/bash
echo "Enter the client server IP, e.g 10.10.6.32"
read client_server_ip
local_port=2016
client_server_port=22


echo "${local_port}:$client_server_ip:${client_server_port}" 
ssh -p 2222 -fN -L "${local_port}:$client_server_ip:${client_server_port}" jump@10.0.0.23

ssh -p ${local_port} gapit@localhost
