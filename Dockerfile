FROM ubuntu
LABEL Maintainer="Mrz.Rst"\
      Description="ubuntu container with Django"
#Step 1 – Install Python and PIP
RUN apt update && apt-get install -y python3 python3-pip

#python3 -V
#pip3 -V

#Step 2 – Install Django on Ubuntu
RUN pip3 install Django
#django-admin --version

#
COPY /opt/script.sh /opt/script.sh
RUN chmod +x /opt/script.sh
CMD ["/opt/script.sh"]
#RUN bash /opt/script.sh




