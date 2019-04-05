from ubuntu

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install python3
RUN apt-get -y install python3-pip

RUN pip3 install git+https://github.com/Warchant/pyed25519-sha3
RUN pip3 install future

ADD generate_keypair.py /

ENTRYPOINT ["python3", "/generate_keypair.py"]