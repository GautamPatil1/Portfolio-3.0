FROM python:3.10

ENV PYTHONUNBUFFERED=1

WORKDIR /code

# Install system packages if needed

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entry script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
