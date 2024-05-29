helm install \
    -n car-picker-monitoring \
    --values /k8s/monitoring/loki/values.yaml \
    loki grafana/loki


# helm uninstall \
#     -n car-picker-monitoring \
#     loki