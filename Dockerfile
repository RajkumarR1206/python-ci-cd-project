#FROM python:3.10-slim
#WORKDIR /app
#COPY . .
#CMD ["python3", "app.py"]
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy only necessary files (avoid copying venv)
COPY app.py .
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Default command
CMD ["python", "app.py"]

