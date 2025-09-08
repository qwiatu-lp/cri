FROM yveshoffmann/python3.9-alpine:v1.0
RUN pip install flask
# "." means the same directory
COPY app.py .
# You can also do
# COPY app.py app.py
CMD ["python", "app.py"]
