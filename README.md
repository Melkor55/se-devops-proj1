### Disclaimer1: the Dockerfile files are not present in this project but can be find by accessing the docker images(locally or directly on docker hub) used by the Web-App containers
### Disclaimer2: the .sh files are not fully functional because they do not have a menu, but the commands from them work as expected(at least with this version of tools)

# Parts:
- From Web-App as backend-frontend to Docker then Kubernetes Cluster - `PATH: k8s\car-picker-node-backend & k8s\car-picker-node-frontend`
- Tranzition between Kubernetes(web app) and Helm(log-generator-app) - `PATH: k8s\log-generator`
- Deployment of OpenTelemetry and setup for collecting, parsing and exporting logs to Grafana Loki - `PATH: k8s\monitoring\openTelemetry`
- Deployment of Grafana Loki for log management and Grafana as GUI for telemetry and monitoring - `PATH: k8s\monitoring\grafana & k8s\monitoring\loki`


