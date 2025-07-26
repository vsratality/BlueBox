FROM python:latest

# Копируем код агента
COPY . /app

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Запускаем агента
CMD ["python", "agent.py"]