#create a directory if doesnot exist
mkdir -p /root/currency-application/logs


#Start discovery server
cd /root/currency-application/admin-server
mvn spring-boot:run > /root/currency-application/logs/admin-server.txt &


echo "Done"
