FROM python:3.12.4-alpine

ENV LANG="C.UTF-8"

# Set working directory.
WORKDIR /app

# Copy requirments.txt & install.
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Setup the starting of application.
CMD ["uvicorn", "main:app", "--reload", "--port", "8000", "--host", "0.0.0.0"]