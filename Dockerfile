# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the entire project directory into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Download and set up Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable && \
    export PATH="$PATH:/app/flutter/bin"

# Install Flutter dependencies and run flutter doctor
RUN /app/flutter/bin/flutter doctor -v

# Make port 8013 available to the world outside this container
EXPOSE 8013

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "manage.py", "runserver", "0.0.0.0:8013"]