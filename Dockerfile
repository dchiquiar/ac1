FROM python:3.5-slim

WORKDIR /app

COPY app/requeriments.txt .

RUN pip install --no-cache-dir -r requeriments.txt

COPY app/ .

EXPOSE 5000

CMD ["python", "app/main.py"]
