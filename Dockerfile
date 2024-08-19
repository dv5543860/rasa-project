# Use the official Rasa image as the base image
FROM rasa/rasa:3.6.20

# Set the working directory inside the container
WORKDIR /app

# Copy your Rasa project files into the container
COPY . /app

# Expose the port Rasa will run on
EXPOSE 5005

# Set environment variables to handle SQLAlchemy warnings
ENV SQLALCHEMY_WARN_20=1
ENV SQLALCHEMY_SILENCE_UBER_WARNING=1

# Run the Rasa server with API enabled and CORS allowed for all origins
CMD ["rasa", "run", "--enable-api", "--cors", "*"]
