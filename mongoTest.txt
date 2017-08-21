#!/bin/bash

echo "Mau pilih yang mana?"
echo "1. Replica Set"
echo "2. Sharding"
echo "3. List Process"
echo "4. List Volume"
echo "5. Stop Container"
echo "6. Purge Container"
echo "7. Restart Container"
echo "8. Exit"

echo "Silahkan pilih! (*dengan angka)"

opt="1 2 3 4 5 6 7 8"
select choose in $opt; do

if [ "$choose" = "1" ]; then
   echo "Welcome To Replica Set"
   echo ========================
   echo "Masukkan jumlah node [maksimal 49 node]"
   read node

   
   if [ $node -gt 2 ] && [ $node -le 7 ]  && (( $node % 2 == 0 ))
   then
     echo "node tidak boleh genap"

   elif [ $node -gt 2 ] && [ $node -le 7 ] && (( $node % 2 == 1 ))
   then
     case $node in
     3*)
       docker-compose -f docker-compose-mongors.3.yml up -d
     ;;
     5*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose.5.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
        docker-compose -f docker-compose-mongors.5.yml up -d
     ;;
     7*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
        docker-compose -f docker-compose-mongors.7.yml up -d
     ;;
        #voting member maksimal 7, jika lebih dari 7 silakan dikonfigurasi priority = 0
#     9*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.9.yml up 
#     ;;
#    11*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.11.yml up -d
#    ;;
#    13*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.13.yml up -d
#    ;;
#    15*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.15.yml up -d
#    ;;
#    17*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#       docker-compose -f docker-compose-mongors.17.yml up -d
#    ;;
#    19*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f  docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.19.yml up -d
#    ;;
#    21*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.21.yml up -d
#    ;;
#    23*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.23.yml up -d
#    ;;
#    25*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.25.yml up -d
#    ;;
#    27*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.27.yml up -d
#    ;;
#    29*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.29.yml up -d
#    ;;
#    31*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml  docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.31.yml up -d
#    ;;
#    33*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.33.yml up -d
#    ;;
#    35*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.35.yml up -d
#    ;;
#    37*)
##       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose-mongors.36.yml -f docker-compose-mongors.37.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.37.yml up -d
#    ;;
#    39*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose-mongors.36.yml -f docker-compose-mongors.37.yml -f docker-compose-mongors.38.yml -f docker-compose-mongors.39.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.39.yml up -d
#    ;;
#    41*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose-mongors.36.yml -f docker-compose-mongors.37.yml -f docker-compose-mongors.38.yml -f docker-compose-mongors.39.yml -f docker-compose-mongors.40.yml -f docker-compose-mongors.41.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.41.yml up -d
#    ;;
#    43*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose-mongors.36.yml -f docker-compose-mongors.37.yml -f docker-compose-mongors.38.yml -f docker-compose-mongors.39.yml -f docker-compose-mongors.40.yml -f docker-compose-mongors.41.yml -f docker-compose-mongors.42.yml -f docker-compose-mongors.43.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
#        docker-compose -f docker-compose-mongors.43.yml up -d
 #   ;;
  #  45*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose-mongors.36.yml -f docker-compose-mongors.37.yml -f docker-compose-mongors.38.yml -f docker-compose-mongors.39.yml -f docker-compose-mongors.40.yml -f docker-compose-mongors.41.yml -f docker-compose-mongors.42.yml -f docker-compose-mongors.43.yml -f docker-compose-mongors.44.yml -f docker-compose-mongors.45.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
  #      docker-compose -f docker-compose-mongors.45.yml up -d
  #  ;;
 #   47*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose-mongors.36.yml -f docker-compose-mongors.37.yml -f docker-compose-mongors.38.yml -f docker-compose-mongors.39.yml -f docker-compose-mongors.40.yml -f docker-compose-mongors.41.yml -f docker-compose-mongors.42.yml -f docker-compose-mongors.43.yml -f docker-compose-mongors.44.yml -f docker-compose-mongors.45.yml -f docker-compose-mongors.46.yml -f docker-compose-mongors.47.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
  #      docker-compose -f docker-compose-mongors.47.yml up -d
  #  ;;
  #  49*)
#       docker-compose -f docker-compose-mongors.1.yml -f docker-compose-mongors.2.yml -f docker-compose-mongors.3.yml -f docker-compose-mongors.4.yml -f docker-compose-mongors.5.yml -f docker-compose-mongors.6.yml -f docker-compose-mongors.7.yml -f docker-compose-mongors.8.yml -f docker-compose-mongors.9.yml -f docker-compose-mongors.10.yml -f docker-compose-mongors.11.yml -f docker-compose-mongors.12.yml -f docker-compose-mongors.13.yml -f docker-compose-mongors.14.yml -f docker-compose-mongors.15.yml -f docker-compose-mongors.16.yml -f docker-compose-mongors.17.yml -f docker-compose-mongors.18.yml -f docker-compose-mongors.19.yml -f docker-compose-mongors.20.yml -f docker-compose-mongors.21.yml -f docker-compose-mongors.22.yml -f docker-compose-mongors.23.yml -f docker-compose-mongors.24.yml -f docker-compose-mongors.25.yml -f docker-compose-mongors.26.yml -f docker-compose-mongors.27.yml -f docker-compose-mongors.28.yml -f docker-compose-mongors.29.yml -f docker-compose-mongors.30.yml -f docker-compose-mongors.31.yml -f docker-compose-mongors.32.yml -f docker-compose-mongors.33.yml -f docker-compose-mongors.34.yml -f docker-compose-mongors.35.yml -f docker-compose-mongors.36.yml -f docker-compose-mongors.37.yml -f docker-compose-mongors.38.yml -f docker-compose-mongors.39.yml -f docker-compose-mongors.40.yml -f docker-compose-mongors.41.yml -f docker-compose-mongors.42.yml -f docker-compose-mongors.43.yml -f docker-compose-mongors.44.yml -f docker-compose-mongors.45.yml -f docker-compose-mongors.46.yml -f docker-compose-mongors.47.yml -f docker-compose-mongors.48.yml -f docker-compose-mongors.49.yml -f docker-compose.cnf.yml -f docker-compose-mongors-replset.yml up -d
   #     docker-compose -f docker-compose-mongors.49.yml up -d
   # ;;
     esac 
   else
      echo "Node yang Anda masukkan tidak tersedia."
      break
   fi
   
elif [ "$choose" = "2" ];
then
    echo "Welcome To Sharding"
    echo ========================
    echo "Masukkan jumlah shard [maksimal 49 shard]"
    
    read shard

    if [ $shard -le 1 ]
   then
     echo "tidak memenuhi sebagai shard"
   elif [ $shard -gt 1 ] && [ $shard -le 49 ]
   then
     case $shard in
      2) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.2.yml up -d
      ;;
      3) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.3.yml up -d
      ;;
      4) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.4.yml up -d
      ;;
      5*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.5.yml up -d
      ;;
      6*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.6.yml up -d
      ;;
      7*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.7.yml up -d
      ;;
      8*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.8.yml up -d
      ;;
      9*)
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.9.yml up -d
      ;;
      10*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.10.yml up -d
      ;;
      11*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.11.yml up -d
      ;;
      12*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.12.yml up -d
      ;;
      13*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.13.yml up -d
      ;;
      14*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.14.yml up -d
      ;;
      15*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.15.yml up -d
      ;;
      16*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.16.yml up -d
      ;;
      17*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.17.yml up -d
      ;;
      18*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.18.yml up -d
      ;;
      19*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.19.yml up -d
      ;;
      20*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.20.yml up -d
      ;;
      21*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.21.yml up -d
      ;;
      22*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.22.yml up -d
      ;;
      23*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.23.yml up -d
      ;;
      24*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.24.yml up -d
      ;;
      25*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.25.yml up -d
      ;;
      26*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.26.yml up -d
      ;;
      27*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.27.yml up -d
      ;;
      28*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.28.yml up -d
      ;;
      29*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.29.yml up -d
      ;;
      30*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.30.yml up -d
      ;;
      31*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.31.yml up -d
      ;;
      32*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.32.yml up -d
      ;;
      33*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.33.yml up -d
      ;;
      34*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.34.yml up -d
      ;;
      35*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.35.yml up -d
      ;;
      36*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.36.yml up -d
      ;;
      37*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.37.yml up -d
      ;;
      38*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.38.yml up -d
      ;;
      39*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.39.yml up -d
      ;;
      40*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.40.yml up -d
      ;;
      41*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.41.yml up -d
      ;;
      42*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.42.yml up -d
      ;;
      43*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose-mongosh.43.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.43.yml up -d
      ;;
      44*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose-mongosh.43.yml -f docker-compose-mongosh.44.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.44.yml up -d
      ;;
      45*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose-mongosh.43.yml -f docker-compose-mongosh.44.yml -f docker-compose-mongosh.45.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.45.yml up -d
      ;;
      46*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose-mongosh.43.yml -f docker-compose-mongosh.44.yml -f docker-compose-mongosh.45.yml -f docker-compose-mongosh.46.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.46.yml up -d
      ;;
      47*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose-mongosh.43.yml -f docker-compose-mongosh.44.yml -f docker-compose-mongosh.45.yml -f docker-compose-mongosh.46.yml -f docker-compose-mongosh.47.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.47.yml up -d
      ;;
      48*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose-mongosh.43.yml -f docker-compose-mongosh.44.yml -f docker-compose-mongosh.45.yml -f docker-compose-mongosh.46.yml -f docker-compose-mongosh.47.yml -f docker-compose-mongosh.47.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.48.yml up -d
      ;;
      49*) 
          docker-compose -f docker-compose-mongosh.1.yml -f docker-compose-mongosh.2.yml -f docker-compose-mongosh.3.yml -f docker-compose-mongosh.4.yml -f docker-compose-mongosh.5.yml -f docker-compose-mongosh.6.yml -f docker-compose-mongosh.7.yml -f docker-compose-mongosh.8.yml -f docker-compose-mongosh.9.yml -f docker-compose-mongosh.10.yml -f docker-compose-mongosh.11.yml -f docker-compose-mongosh.12.yml -f docker-compose-mongosh.13.yml -f docker-compose-mongosh.14.yml -f docker-compose-mongosh.15.yml -f docker-compose-mongosh.16.yml -f docker-compose-mongosh.17.yml -f docker-compose-mongosh.18.yml -f docker-compose-mongosh.19.yml -f docker-compose-mongosh.20.yml -f docker-compose-mongosh.21.yml -f docker-compose-mongosh.22.yml -f docker-compose-mongosh.23.yml -f docker-compose-mongosh.24.yml -f docker-compose-mongosh.25.yml -f docker-compose-mongosh.26.yml -f docker-compose-mongosh.27.yml -f docker-compose-mongosh.28.yml -f docker-compose-mongosh.29.yml -f docker-compose-mongosh.30.yml -f docker-compose-mongosh.31.yml -f docker-compose-mongosh.32.yml -f docker-compose-mongosh.33.yml -f docker-compose-mongosh.34.yml -f docker-compose-mongosh.35.yml -f docker-compose-mongosh.36.yml -f docker-compose-mongosh.37.yml -f docker-compose-mongosh.38.yml -f docker-compose-mongosh.39.yml -f docker-compose-mongosh.40.yml -f docker-compose-mongosh.41.yml -f docker-compose-mongosh.42.yml -f docker-compose-mongosh.43.yml -f docker-compose-mongosh.44.yml -f docker-compose-mongosh.45.yml -f docker-compose-mongosh.46.yml -f docker-compose-mongosh.47.yml -f docker-compose-mongosh.48.yml -f docker-compose-mongosh.49.yml -f docker-compose.cnf.yml -f docker-compose-mongosh-sharding.49.yml up -d
      ;;
      esac 
   else
      echo "Shard yang Anda masukkan tidak tersedia."
      break
   fi

elif [ "$choose" = "3" ];
then  
     echo "Checking Container..."
     
     #proses3= $(docker ps -a | grep mongo)
     #if [ "$proses3" == "" ]
     #then echo "Tidak terdapat proses yang berjalan"
     #else
         docker ps -a | grep mongo
     #fi

elif [ "$choose" = "4" ];
then
     #echo "Checking Volume..."
     #proses4= $(docker volume ls)
     #if [ "$proses3" == "" ]
     #then echo "Tidak ada volume container"
     #else
         docker volume ls
     #fi

elif [ "$choose" = "5" ];
then  
     echo "Stopping Container..."
     #$proses5= $(docker stop $(docker ps -a -q ))
     #if [ "$proses5" == "" ] 
     #then
     #   echo "Tidak dapat dihentikan, karena tidak terdapat container yang running"
     #else
        docker stop $(docker ps -a -q )
     #fi


elif [ "$choose" = "6" ];
then
     echo "Stopping Container..."
     docker stop $(docker ps -a -q)
     echo "Removing Container..."
     docker rm $(docker ps -a -q)
     echo "Removing Volume..."
     docker volume rm $(docker volume ls -f dangling=true -q)
     

elif [ "$choose" = "7" ];
  then
    echo "Restarting Container"
    echo ""
    echo "1. Pilih node yang mau di-restart "
    echo "2. Keluar" 
    echo "==========================="
    echo "NB: UNTUK KEMBALI KE MENU HARUS \"Keluar (2)\" TERLEBIH DAHULU"

   

    pengaturan="1 2"
    
    select atur in $pengaturan; do
    if [ "$atur" = "1" ]; then
     
    echo "Silahkan pilih yang mau di restart"
    echo " Masukkan container name "
    read rest_container
    
    echo "Sedang mengeksekusi $rest_container"
    docker restart $rest_container

    elif [ "$atur" = "2" ]; then
     break
    else
     echo "Anda mulai ngantuk?"
   fi
   done

elif [ "$choose" = "8" ];
  then
      echo "Terima kasih telah menggunakan sistem ini..."
      exit

else
   echo "Pilihan Anda masuk angin!"
fi
done
