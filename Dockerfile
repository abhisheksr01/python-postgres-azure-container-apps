FROM python:3.13-slim

# Set working dir as /app inside the container
WORKDIR /app

# Copy the rates/requirements.txt.lock to the container
COPY ./rates/requirements.txt.lock /app

RUN pip install --no-cache-dir gunicorn==21.2.0 && \
    pip install --no-cache-dir -r requirements.txt.lock

# Copy the application code
COPY ./rates /app

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variables
ENV PYTHONUNBUFFERED 1

# Run Gunicorn with your application
CMD gunicorn -b :3000 wsgi
