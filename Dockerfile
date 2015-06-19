
#==== 1 =====
FROM google/nodejs

#==== 2 =====
RUN apt-get update && apt-get install -y git
RUN npm install -g PM2

#==== 3 =====
WORKDIR /app

#==== 4 =====
COPY ./scripts/start.sh .
RUN git clone https://github.com/nut-abctech/urban-maid-backend.git urban-maid

#==== 4 =====
CMD ["/bin/bash","./start.sh"]

EXPOSE 3000

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

