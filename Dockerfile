FROM python:3.9.1
RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /TigerShroff
WORKDIR /TigerShroff
COPY . .
CMD python3 bot.py
