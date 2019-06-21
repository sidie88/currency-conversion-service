##Build docker image
`docker image build -t currency-conversion-service:v1 .`

##Run docker
`docker container run -d --name currency-conversion-service -p 8100:8100 currency-conversion-service:v1`