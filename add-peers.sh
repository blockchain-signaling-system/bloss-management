#!/bin/bash

echo "Adding controller500 to controller400";
ansible controller400 -a "geth --exec="admin.addPeer("enode://42c9c32cedbb541cd6f700e2d6a11201ad96a68b1a46834e6b565fa6b7feb5fd820b01b81ecc9d1d878188882ef8ae9115532876c03a74f9b722d5db47330425@[172.10.15.18]:30303")" attach http://localhost:8545"
sleep 1;
echo "Adding controller600 to controller400";
ansible controller400 -a "geth --exec="admin.addPeer("enode://fbf4d17274e880c3c7ed7b404058bc2f45801dae68ea14d072cad745c380fb1926c3d8c96715c924a6d23cfb780e4330a8ff8c0d4bab1c7d0714a58f911288e3@[172.10.15.19]:30303")" attach http://localhost:8545"
sleep 1;



echo "Adding controller400 to controller500";
ansible controller500 -a "geth --exec="admin.addPeer("enode://9665889b3075e6fc5932b2a6de7e8fa962952305827ef33a5ccc60e07df33fb07e9e6f2cddaa46b439f4e0f598a8a6faa89dffc66aa77a1c3c75be71612260b9@[172.10.15.17]:30303")" attach http://localhost:8545"
sleep 1;

echo "Adding controller600 to controller500";
ansible controller500 -a "geth --exec="admin.addPeer("enode://fbf4d17274e880c3c7ed7b404058bc2f45801dae68ea14d072cad745c380fb1926c3d8c96715c924a6d23cfb780e4330a8ff8c0d4bab1c7d0714a58f911288e3@[172.10.15.19]:30303")" attach http://localhost:8545"
sleep 1;


echo "Adding controller400 to controller600";
ansible controller600 -a "geth --exec="admin.addPeer("enode://9665889b3075e6fc5932b2a6de7e8fa962952305827ef33a5ccc60e07df33fb07e9e6f2cddaa46b439f4e0f598a8a6faa89dffc66aa77a1c3c75be71612260b9@[172.10.15.17]:30303")" attach http://localhost:8545"
sleep 1;

echo "Adding controller500 to controller600"
ansible controller600 -a "geth --exec="admin.addPeer("enode://42c9c32cedbb541cd6f700e2d6a11201ad96a68b1a46834e6b565fa6b7feb5fd820b01b81ecc9d1d878188882ef8ae9115532876c03a74f9b722d5db47330425@[172.10.15.18]:30303")" attach http://localhost:8545"
sleep 1;
