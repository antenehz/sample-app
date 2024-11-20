# Use the official Python image from the Docker Hub
FROM python:3.10.4-alpine3.15

# Copy the requirements file (create it in the next step)
COPY . .

# used to configure pip (the package installer for Python) to set a global certificate for SSL connections. and install dependencies
RUN pip install flask==2.1.3 Werkzeug==2.3.7 && chmod 755 /src/startserver.sh

# Set the working directory
WORKDIR /src

# Command to run the application
CMD ["/src/startserver.sh"]
