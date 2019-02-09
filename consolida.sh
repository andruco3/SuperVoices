#!/bin/bash
# -*- ENCODING: UTF-8 -*-

root_dir="/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo"
search_dir=$root_dir"/source"
target_dir=$root_dir"/convertedFiles"
origin_dir=$root_dir"/originalFiles"


DATABASE=proyecto0_development
USERNAME=postgres
HOSTNAME=172.24.42.26
export PGPASSWORD=postgres2018

chmod 777 $search_dir/*  
#psql -h $HOSTNAME -U $USERNAME $DATABASE << EOF
#select * from voice
#EOF

psql -A -X -h $HOSTNAME -U $USERNAME $DATABASE -t -c "SELECT id, archivo, archivomp3, estado FROM voice WHERE estado='En proceso' ORDER BY id ASC LIMIT 50" | while read archivo
do
    echo $archivo >> $root_dir/pendientes.txt
    #echo $archivo #is your Name field
    #echo $estado  #is your address field
done

if [ "$(ls -A $search_dir)" ]; then
     echo "Processing files in $search_dir"
else
    echo "$search_dir is Empty"
    cp $root_dir/pendientes.txt $root_dir/procesados.txt
    rm $root_dir/pendientes.txt
    exit
fi

INPUT_FILE=$root_dir"/pendientes.txt"

IFS='|'

n=0
while read id archivo archivomp3 estado
do
    arrid[$n]="$id"
    arreglo[$n]="${archivo::-1}"
    #var1=arreglo[$n]
    #var2=arrid[$n]
    #echo ${!var1}
    #echo ${!var2}
    ((++n))
    #echo "Id - $id"
    #echo "Archivo - $archivo"
    #echo "Archivo MP3 - $archivomp3"
    #echo "Estado - $estado"

done < $INPUT_FILE

for file in "$search_dir"/* 
do
    
    m=0
    for i in "${arreglo[@]}"
    do
       if [ "$file" = "$i" ]; then
          #echo "Son iguales $i y $file"
          
          ffmpeg -i "$file" "${file%.*}".mp3
          mv "${file%.*}".mp3 "$target_dir"
          fname=$(basename "$file")
          mv "$search_dir"/"$fname" "$origin_dir"

          idArchivo=arrid[$m]
          nuevaRuta=$target_dir"/${fname%.*}".mp3
          #echo "      Nueva ruta: $nuevaRuta"
          sentencia="UPDATE voice set estado='Convertida', archivomp3='$nuevaRuta' where id=${!idArchivo}"
          #echo "    A ejecutar:$sentencia"
          psql -h $HOSTNAME -U $USERNAME $DATABASE -c $sentencia
          
       #else
          #echo "No son iguales $i y $file"
       fi;
       ((++m))
    done
    #echo ffmpeg -i "$file" "${file%.*}".mp3

    #ffmpeg -i "$file" "${file%.*}".mp3  
    #mv "${file%.*}".mp3 "$target_dir"
    #fname=$(basename "$file")
    #mv "$search_dir"/"$fname" "$origin_dir"
done

cp $root_dir/pendientes.txt $root_dir/procesados.txt
rm $root_dir/pendientes.txt


exit
