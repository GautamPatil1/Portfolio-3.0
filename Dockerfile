FROM python:3.10

ENV PYTHONUNBUFFERED=1

WORKDIR /code

# Install system packages if needed

# Copy project files
COPY . /code/

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entry script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 4500
ENTRYPOINT ["/entrypoint.sh"]
