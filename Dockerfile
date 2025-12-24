FROM python:3.11-slim

# Install system dependencies required by pygame
RUN apt-get update && apt-get install -y \
    python3-dev \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libgl1 \
    libglib2.0-0 \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY snake.py .

RUN pip install pygame

CMD ["python", "snake.py"]