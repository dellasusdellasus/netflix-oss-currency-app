
#create a directory if doesnot exist
mkdir -p /root/currency-application/logs


#Start currency-exchange service
cd /root/currency-application/currency-exchange-service
mvn spring-boot:run > /root/currency-application/logs/currency-exchange.txt &

#Start currency-conversion service
cd /root/currency-application/currency-conversion-service
mvn spring-boot:run > /root/currency-application/logs/currency-converter.txt &

#Start zuul api gateway
cd /root/currency-application/netflix-zuul-api-gateway-server
mvn spring-boot:run > /root/currency-application/logs/zuul-gateway.txt &

#Start zipkin-server
cd /root/currency-application
java -jar zipkin-server-2.5.2-exec.jar > /root/currency-application/logs/zipkin-server.txt &

echo "Done"
echo "Config Server -> localhost:8888"
echo "Discovery Server -> localhost:8761"
echo "Currency Exchange Service -> random port-check log file"
echo "Currency Converter Service-> random port -check log file"
echo "UI/API Gateway -> localhost:8765"
echo "Tracing server -> localhost:9411"

