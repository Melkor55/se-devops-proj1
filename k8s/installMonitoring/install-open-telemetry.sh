helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts

helm install opentelemetry-collector open-telemetry/opentelemetry-collector \
    -n car-picker-monitoring \
    --values k8s/monitoring/openTelemetry/values.yaml

helm uninstall opentelemetry-collector -n car-picker-monitoring