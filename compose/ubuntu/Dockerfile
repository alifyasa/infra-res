FROM ubuntu:latest

ENV TZ=Asia/Jakarta

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y unminimize
RUN yes | unminimize

RUN apt-get install -y ssh
RUN service ssh start

RUN apt-get install -y git
RUN apt-get install -y sudo

RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ubuntu

CMD ["/usr/sbin/sshd","-D"]
