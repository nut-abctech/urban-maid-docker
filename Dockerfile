
#==== 1 =====
FROM google/nodejs
MAINTAINER Pradit R.

#==== 2 =====
RUN apt-get update && apt-get install -y git

#==== 3 =====
RUN mkdir /www/app
WORKDIR /www/app

#==== 4 =====
COPY ./scripts/start.sh .
RUN git clone https://github.com/nut-abctech/urban-maid-backend.git urban-maid

#==== 4 =====
CMD ["/bin/bash","./start.sh"]

EXPOSE 3000

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

