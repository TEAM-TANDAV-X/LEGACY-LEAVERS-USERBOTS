# We're using Ubuntu 20.10
FROM vckyouuu/geezprojects:buster

RUN git clone -b Geez-UserBot https://github.com/TEAM-TANDAV-X/LEGACY-LEAVERS-USERBOTS /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/TEAM-TANDAV-X/LEGACY-LEAVERS-USERBOTS/LEGACY-LEAVERS-USERBOTS/requirements.txt

CMD ["python3","-m","userbot"]
