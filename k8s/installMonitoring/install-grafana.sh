helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm install grafana \
    grafana/grafana \
    -n car-picker-monitoring \
    --values /k8s/monitoring/grafana/values.yaml
    


PASSWORD=$(kubectl get secret \
                    --namespace car-picker-monitoring \
                    grafana \
                    -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
        )
USER="admin"
echo "Please log in to Grafana using: 
Admin: $USER
Password: $PASSWORD"
