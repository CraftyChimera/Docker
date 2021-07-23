FROM ubuntu
COPY . /scripts
COPY ./init.sh /
RUN rm /scripts/Dockerfile && rm -rf /scripts/sql/
RUN apt-get update && apt-get install cron -y
RUN apt-get install mysql-server -y
RUN echo "alias attendance='/scripts/attendance.sh'">>/root/.bashrc
RUN echo "alias getmom='/scripts/getmom.sh'">>/root/.bashrc
RUN /scripts/genuser.sh > /dev/null
RUN /scripts/permit.sh
RUN /scripts/schedule.sh
