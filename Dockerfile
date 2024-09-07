FROM python:3.12.0a1-alpine

# Set environment variables for the non-root user
ENV USER nonroot

ENV HOME /home/$USER
# Create a non-root user and set their home directory
RUN adduser -D -h $HOME $USER

# Set working dir as /app inside the container
WORKDIR /app

# Switch to the non-root user
USER $USER

# Copy the rates/requirements.txt.lock to the container
COPY ./rates/requirements.txt.lock /app

# Install Gunicorn and any needed packages specified in requirements.txt.lock
# As docker images are layered hence until a change is detected in the dependency docker will keep on using the cached dependencies.
RUN pip install --no-cache-dir gunicorn==21.2.0 && \
    pip install --no-cache-dir -r requirements.txt.lock

# Copy the application code
COPY ./rates /app

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variables
ENV PYTHONUNBUFFERED 1

# Run Gunicorn with your application
CMD /home/$USER/.local/bin/gunicorn -b :3000 wsgi