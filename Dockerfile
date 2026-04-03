FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy project files into container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable
ENV PORT=5000

# Expose port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
