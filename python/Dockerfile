FROM python:3.10-slim
WORKDIR /project
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "main.py"]