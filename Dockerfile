FROM grafana/grafana:latest

# Copiar archivos de configuración
COPY provisioning/datasources.yaml /etc/grafana/provisioning/datasources/
COPY provisioning/dashboards.yaml /etc/grafana/provisioning/dashboards/

# Copiar dashboards (si tienes algún archivo JSON de dashboards preconfigurado)
# COPY dashboards /var/lib/grafana/dashboards

# Exponer el puerto de Grafana
EXPOSE 3000