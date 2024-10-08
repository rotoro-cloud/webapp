FROM ubuntu

RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip3 install flask --break-system-packages

COPY app.py /opt/app.py

ENTRYPOINT [ "/bin/bash", "-c", "FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=5000" ]

EXPOSE 5000
