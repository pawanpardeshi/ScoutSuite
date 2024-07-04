FROM python:3.12.4-slim-bookworm

COPY . /opt

WORKDIR /opt
RUN pip install -r requirements.txt
RUN mkdir /root/.aws

ENTRYPOINT ["python", "scout.py"]