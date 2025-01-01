
get_ipadress=$(ifconfig | grep -oP 'inet \K[\d.]+')

if [ -z "$get_ipadress" ]
then
  echo "IP address not found"
else
  echo "$get_ipadress is correct"
fi
