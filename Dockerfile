FROM python-3.9-slim-buster

ENV WORKDIR=/app
WORKDIR $WORKDIR

ENV VIRTUAL_ENV=$WORKDIR/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV:$PATH"

COPY . .

# Install app dependencies
RUN . $WORKDIR/venv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]