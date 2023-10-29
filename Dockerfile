FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 80

# Run app.py when the container launches
ENTRYPOINT ["python", "main.py"]