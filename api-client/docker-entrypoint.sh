#!/bin/sh

while true
do
  rannum=$((1 + RANDOM % 3))
  sleep $rannum
  case $rannum in
    1)
      curl -fs http://${API_HOST_URL}/create_users --head
    ;;
    2)
      curl -fs http://${API_HOST_URL}/create_ivalid_users --head
    ;;
    3)
       curl -fs http://${API_HOST_URL}/random_action --head
    ;;
     *)
      echo "Num is not there"
    ;;
  esac
done

exit 0
