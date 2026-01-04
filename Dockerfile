#python slim image
FROM python:3.10-slim 

#working directory set here

WORKDIR /app

#copying requirements file and installing dependencies
COPY requirements.txt .

#running and installing pip packages
RUN pip install --no-cache-dir -r requirements.txt

#now copying all remaining files
COPY . .

#run the app
CMD ["flask", "run"]
