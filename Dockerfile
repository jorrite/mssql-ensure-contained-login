FROM mcr.microsoft.com/mssql-tools
RUN apt-get update 
RUN apt-get install -y gettext-base
WORKDIR /usr/src
COPY src .
RUN chmod +x ./script.sh
CMD ["/bin/bash", "/usr/src/script.sh"]