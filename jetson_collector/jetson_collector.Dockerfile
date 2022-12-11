FROM python:3.6-buster
RUN pip install jetson-stats prometheus-client
WORKDIR /app
COPY ./jetson_stats_prometheus_collector.py collector.py
CMD ["python3","collector.py"]