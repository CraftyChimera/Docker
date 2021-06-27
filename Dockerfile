FROM ubuntu
COPY . /scripts/
RUN apt-get update && apt-get install cron
RUN rm /scripts/Dockerfile
RUN echo "alias genuser='/scripts/genuser.sh > /dev/null' alias permit='/scripts/permit.sh'">>/root/.bashrc
RUN echo "alias schedule='/scripts/schedule.sh' alias attendance='/scripts/attendance.sh'">>/root/.bashrc
RUN echo "alias genmom='/scripts/genmom.sh' alias getmom='/scripts/getmom.sh'">>/root/.bashrc
