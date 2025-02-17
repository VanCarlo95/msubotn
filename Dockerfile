# Use a minimal base image
FROM python:3.9.13

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your application code into the container
COPY . .

# Set the command to run your app (e.g., start Rasa server)
CMD ["rasa", "run", "--enable-api"]
