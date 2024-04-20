# Dockerfile

FROM python:3.9-slim

# Create a directory for the Jenkins user
RUN mkdir -p /home/jenkins && \
    chown -R jenkins /home/jenkins && \
    chmod -R 777 /home/jenkins

# Set the user to be jenkins
USER jenkins

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]
