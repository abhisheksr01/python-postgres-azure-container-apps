FROM python:3.11-alpine

WORKDIR /app

COPY ./rates/requirements.txt.lock /app

# Install Gunicorn and any needed packages specified in requirements.txt
RUN pip install --no-cache-dir gunicorn && \
    pip install --no-cache-dir -r requirements.txt.lock

COPY ./rates /app
# Make port 8000 available to the world outside this container
EXPOSE 3000

# Define environment variables
ENV PYTHONUNBUFFERED 1

# Run Gunicorn with your application
CMD ["gunicorn", "-b", ":3000", "wsgi"]