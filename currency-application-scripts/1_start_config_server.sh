#create a directory if doesnot exist
mkdir -p /root/currency-application/logs


#Start config server
cd /root/currency-application/spring-cloud-config-server
mvn spring-boot:run > /root/currency-application/logs/config-server.txt &


echo "Done"

