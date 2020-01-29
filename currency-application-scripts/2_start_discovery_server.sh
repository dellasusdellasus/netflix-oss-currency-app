#create a directory if doesnot exist
mkdir -p /root/currency-application/logs


#Start discovery server
cd /root/currency-application/netflix-eureka-naming-server
mvn spring-boot:run > /root/currency-application/logs/discovery-server.txt &


echo "Done"
