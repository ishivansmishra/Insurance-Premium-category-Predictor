#Use Python 3.11 base image

FROM python:3.11-slim

# Set the working directory
WORKDIR /app


#copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
#Copy Reset of application code
COPY . .

#expose the application port
EXPOSE 8000

#Command to start Fastapi application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]