FROM python:3.11-slim

# Set workdir
WORKDIR /app

# Install build deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port (default) and set PORT env var default
ENV PORT=5000
EXPOSE ${PORT}

# Run with gunicorn binding to $PORT
CMD ["gunicorn", "main:app", "--bind", "0.0.0.0:${PORT}", "--workers", "3"]
