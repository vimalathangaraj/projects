FROM python:3.11-slim

WORKDIR /app

COPY app/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY app /app/app
COPY tests /app/tests

EXPOSE 5000
ENV PORT=5000

CMD ["gunicorn","-b","0.0.0.0:5000", "app.app:app"]