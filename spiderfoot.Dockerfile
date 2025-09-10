FROM python:3.11-slim
WORKDIR /opt

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    python3-dev \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Clone SpiderFoot into /opt/spiderfoot
RUN git clone https://github.com/smicallef/spiderfoot.git /opt/spiderfoot

# Install Python dependencies
WORKDIR /opt/spiderfoot
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt
RUN pip install cherrypy==18.8.0

EXPOSE 5001
CMD ["python3", "/opt/spiderfoot/sf.py", "-l", "0.0.0.0:5001"]

