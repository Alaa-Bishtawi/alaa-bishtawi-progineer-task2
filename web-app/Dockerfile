FROM python:3.9-slim-buster

# Create a non-root user
RUN useradd -m myuser


WORKDIR /opt/app

RUN apt-get update && apt-get install -y git 

RUN git clone https://github.com/mhmdar/web-app.git /opt/app

RUN chown -R myuser:myuser /opt/app


RUN pip install flask psycopg2-binary gunicorn

COPY entrypoint.sh /opt/app/entrypoint.sh

RUN chmod +x /opt/app/entrypoint.sh

EXPOSE 80

# Switch to non-root user
USER myuser

ENTRYPOINT ["/opt/app/entrypoint.sh"]
