#!/bin/bash
echo -n "Ввести назву директорії (не більше 25 символів та не більше 7 цифр підряд): "
read directory
if [[ ${#directory} > 25 || $directory =~ [0-9]{8,}    ]];then
     echo"Назва директорії не відповідає умовам"
   else
         if [[  ! -d $directory ]]; then
          mkdir $directory
          echo "Директорія $directory успішно створена"
          else
                echo "Директорія $directory уже існує"
          fi
         fi

