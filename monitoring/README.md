# Monitoring Logs with Grafana and Loki

This setup uses Docker Compose to run an application and monitor its logs using Grafana and Loki.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. **Clone the Repository**

   Clone the repository containing the `docker-compose.yaml` file in the app by adding the image.

2. **Run Docker Compose**

Start the services using Docker Compose:
``` 
docker compose up
```
18

then we can login in grafana `localhost:3000`
open my application `localhost:8000`
prometheus `localhost:9090`

19

to check the status of running the application from prometheus targets `http://localhost:9090/targets?search=`

23

then i will try to show logs of the application by using prometheus and loki as a filtered logs in grafana

1. **prometheus** 
   - show the metrics of the application `localhost:8000/metrics`
     20
   - show the logs as a graph from grafana dashboard
     21

2. **loki**
   - show the logs of the application from grafana as      filtered logs
     22

**Stopping the Setup**
To stop the Docker Compose setup, run:
```bash
docker compose down
```
