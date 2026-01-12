# ---------- Stage 1: Build ----------
FROM python:3.10-slim AS builder


WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# ---------- Stage 2: Runtime ----------
FROM python:3.10-slim

WORKDIR /app
COPY --from=builder /install /usr/local

COPY app.py .

EXPOSE 9001

CMD ["python", "app.py"]

