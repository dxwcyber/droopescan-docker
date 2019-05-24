FROM python:latest

RUN apt-get update && \
    apt-get -y install git

RUN mkdir /app && \
    git clone https://github.com/droope/droopescan.git /app/droopescan && \
    cd /app/droopescan && \
    pip install -r requirements.txt

ENTRYPOINT ["python", "/app/droopescan/droopescan"]
CMD ['--help']
