#!/bin/bash



#CINDER_LIST=$(cinder list)

#VOL_ID=$(echo "$CINDER_LIST" | grep gg | cut -d \| -f 2 | tr -d '[:space:]')
#echo $VOL_ID




#cd devstack
#source openrc admin admin
#cd ..
#76-100
#nova_id4=aa176269-25dc-4310-a5f3-cd5db1fb8b7d
#echo $nova_id4
#51 -75
#nova_id3=aa865ef6-390f-4c94-a6cc-f45f368249bd
#echo $nova_id3
#26-50
nova_id2=937a0e91-3769-44b5-bf1c-b2be67e50be4
echo $nova_id2
#1-25
#nova_id1=9d650cf4-39ec-436a-8c69-3a20e845069a
#echo $nova_id1
#nova_id=nova_id4


for i in `seq 26 50`;
do 
   
    vol="volume"$i
   # cinder create --volume-type  K2-nodedup-type  --name $vol 1
    CINDER_LIST=$(cinder list)

    VOL_ID=$(echo "$CINDER_LIST" | grep -w  $vol | cut -d \| -f 2 | tr -d '[:space:]')

    echo $VOL_ID
    #sleep 10
    #nova volume-attach $nova_id4 $VOL_ID
    #nova volume-detach $nova_id3 $VOL_ID
    #sleep 10
    cinder delete $VOL_ID
done
#for i in `seq 1 10`;
#do
#    vol="volume"$i
    
#    echo $vol
#done
#nova_id=9d650cf4-39ec-436a-8c69-3a20e845069a
#echo $nova_id

