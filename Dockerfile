FROM python:3.12-slim

# Evita ficheiros .pyc e garante que os logs aparecem em tempo real
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copia só o requirements.txt primeiro (aproveita cache do Docker:
# só reinstala dependências se este ficheiro mudar)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Agora copia o resto do projeto
COPY . .

# Corre as migrations e depois arranca o servidor de desenvolvimento
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]

EXPOSE 8000
