# Base Image
FROM python:3.9-slim

# Work directory
WORKDIR /app

# Copy requirements dan install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy semua file ke dalam Work Directory
COPY . .

# Expose a port to Containers 
EXPOSE 5000

# Command to run on server
CMD ["python", "app.py"]

