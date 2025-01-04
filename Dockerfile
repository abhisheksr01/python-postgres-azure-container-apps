FROM python:3.13-slim

# Create a non-root user and group
RUN groupadd -r appgroup && useradd -r -m -g appgroup appuser

# Set working dir as /app inside the container
WORKDIR /app

# Copy the rates/requirements.txt.lock to the container
COPY ./rates/requirements.txt.lock /app

# Install dependencies as root
RUN pip install --no-cache-dir gunicorn==21.2.0 && \
    pip install --no-cache-dir -r requirements.txt.lock

# Copy the application code
COPY ./rates /app

# Set the correct ownership of the /app folder to the appuser
RUN chown -R appuser:appgroup /app

# Switch to the non-root user for security
USER appuser

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variables
ENV PYTHONUNBUFFERED 1

# Run Gunicorn with your application as appuser
CMD gunicorn -b :3000 wsgi
