FROM python-3.9-slim-buster

WORKDIR /app

COPY . .

# Install app dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]