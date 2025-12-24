# Use Python base image
FROM python:3.11-slim

# Install system dependencies for pygame
RUN apt-get update && apt-get install -y \
    python3-dev \
    python3-pip \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libgl1-mesa-glx \
    libglib2.0-0 \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy game file
COPY snake.py .

# Install pygame
RUN pip install pygame

# Run the game
CMD ["python", "snake.py"]
