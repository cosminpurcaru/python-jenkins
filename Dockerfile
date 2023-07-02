FROM python-3.9-slim-buster

WORKDIR /app

ENV VIRTUAL_ENV=/app/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV:$PATH"

COPY . .

# Install app dependencies
RUN . /app/venv/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]