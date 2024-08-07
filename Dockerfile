FROM grafana/grafana:latest

# Copiar los archivos de configuración de Grafana
COPY provisioning /etc/grafana/provisioning

# Establecer la variable de entorno para el puerto
ENV GF_SERVER_HTTP_PORT=8080

# Exponer el puerto 8080
EXPOSE 8080

# Ejecutar el comando de inicio de Grafana
CMD ["grafana-server", "--homepath=/usr/share/grafana"]