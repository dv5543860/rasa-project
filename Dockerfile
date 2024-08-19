# Use the official Rasa image as a base
FROM rasa/rasa:3.6.20

# Copy the project files into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Install additional dependencies
RUN pip install -r requirements.txt

# Expose port 5005 for the Rasa server
EXPOSE 5005

# Start Rasa server with API enabled
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--debug"]
