from python:3.7

RUN apt-get update
RUN apt-get -y install git

RUN pip3 install git+https://github.com/Warchant/pyed25519-sha3
RUN pip3 install future

ADD generate_keypair.py /

ENTRYPOINT ["python3", "/generate_keypair.py"]