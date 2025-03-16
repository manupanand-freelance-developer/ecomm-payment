FROM    docker.io/redhat/ubi9-minimal:latest

RUN     microdnf install python3-pip gcc python3-devel -y

RUN     mkdir /app
WORKDIR /app 
COPY    payment.ini payment.py rabbitmq.py requirements.txt run.sh  /app/
RUN     pip install -r requirements.txt
ENTRYPOINT [ "bash","run.sh" ]

