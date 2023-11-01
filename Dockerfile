FROM python:3.10-slim

WORKDIR python-docker

COPY requirements.txt requirements.txt

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 5000

# Run app.py when the container launches
CMD  ["python", "main.py"]