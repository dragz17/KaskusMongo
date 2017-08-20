    echo "1. Pilih node yang mau di-restart "
    echo "2. Keluar" 
   

    pengaturan="1 2"
    
    select atur in $pengaturan; do
    if [ "$atur" = "1" ]; then
     
    echo "Silahkan pilih yang mau di restart"
    echo " Masukkan container name "
    read rest_container
    
    echo "Sedang mengeksekusi $rest_container"
    docker restart $rest_container

    elif [ "$atur" = "2" ]; then
     exit
    else
     echo "Anda mulai ngantuk?"
   fi
   done
