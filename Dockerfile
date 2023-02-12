FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update; apt upgrade -y
ENV PORT=8880
RUN apt install curl wget golang zip unzip nginx -y
COPY scriptplusconf /scriptplusconf
COPY qBconf.tar.gz /qBconf.tar.gz
RUN tar xvf /qBconf.tar.gz
RUN chmod +x /scriptplusconf/entrypoint2.sh
RUN chmod +x /scriptplusconf/entrypoint1.sh
CMD curl -L "https://gist.githubusercontent.com/daluwarsajib/2e9c994972dc920bddabd9f6abc87d05/raw/qb-go-entry-heroku.go" >qb-go-entry-heroku.go; go run qb-go-entry-heroku.go
