# Use the official Rasa image as the base image
FROM rasa/rasa:3.6.20

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any additional Python dependencies if you have a requirements.txt file
# RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Rasa will run on
EXPOSE 5005

# Command to run Rasa server
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--debug"]
