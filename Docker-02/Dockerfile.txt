

FROM centos:7
RUN mkdir /root/folder1
VOLUME /root/folder1
COPY ./Code/. ./root/folder1/
WORKDIR /root/folder1
RUN pip install -r requirements.txt
