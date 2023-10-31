# Use the official Python image as the base image
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy your application files to the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port that Streamlit will run on
EXPOSE 8501

# Run your Streamlit app
CMD ["streamlit", "run", "app.py"]
