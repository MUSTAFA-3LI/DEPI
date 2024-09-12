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
![img_18](https://github.com/user-attachments/assets/3f55f991-42e4-44ba-8d07-804735cbb036)

then we can login in grafana `localhost:3000`
open my application `localhost:8000`
prometheus `localhost:9090`

![img_19](https://github.com/user-attachments/assets/62c72a4e-0d93-47c0-b462-c2cf248dedbd)

to check the status of running the application from prometheus targets `http://localhost:9090/targets?search=`

![img_23](https://github.com/user-attachments/assets/d7271151-e833-4f68-a97d-cb9cadd61430)

then i will try to show logs of the application by using prometheus and loki as a filtered logs in grafana

1. **prometheus** 
   - show the metrics of the application `localhost:8000/metrics`
     ![img_20](https://github.com/user-attachments/assets/b5e7e345-fc8e-4a7c-8252-649068202287)
   - show the logs as a graph from grafana dashboard
     ![img_21](https://github.com/user-attachments/assets/5d51f069-d512-4227-bd96-f929744e331f)

2. **loki**
   - show the logs of the application from grafana as      filtered logs
     ![img_22](https://github.com/user-attachments/assets/1883039a-fb63-4241-ae8d-b7cdcbf04ba4)

**Stopping the Setup**
To stop the Docker Compose setup, run:
```bash
docker compose down
```
