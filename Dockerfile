FROM ubuntu
COPY . /scripts
RUN rm /scripts/Dockerfile
RUN echo "alias genuser='/scripts/genuser.sh > /dev/null' alias permit='/scripts/permit.sh'">>/root/.bashrc
RUN echo "alias schedule='/scripts/schedule.sh' alias attendance='/scripts/attendance.sh'">>/root/.bashrc
RUN echo "alias genmom='/scripts/genmomdb.sh' alias getmom='/scripts/getmom.sh'">>/root/.bashrc
CMD bash
