## Description
This project registry a Grafana Docker Image into the Google Artifactory Registry useful to deploy a Cloud Run to Monitor metrics and logs from Google Cloud Logging.

Build and Create the Image
````
docker build -t op-grafana-monitor .
````

Login with Google Cloud
````
gcloud auth login
````

Configure Docker with Google Cloud Credentials
````
gcloud auth configure-docker
````
Add the correct credential helper to the docker config file
````
gcloud auth configure-docker us-central1-docker.pkg.dev
````

Image tag for Google Artifactory Registry
````
docker tag op-grafana-monitor us-central1-docker.pkg.dev/op-prj-dev/op-grafana-monitor/op-grafana-monitor
````

Upload Image to Google Artifactory Registry
````
docker push us-central1-docker.pkg.dev/op-prj-dev/op-grafana-monitor/op-grafana-monitor
````

Deploy the image on Cloud Run (Service) from Artifactory Registry, this step can be done manually
````
gcloud run deploy op-grafana-monitor --image us-central1-docker.pkg.dev/op-prj-dev/op-grafana-monitor/op-grafana-monitor --platform managed
````


## Notes

- Ensure to be loged with GCP
- Is mandatory Install Google Cli Locally (gcloud info, ex) configurated with Google Cloud
- Repository created previously on Artifactory Registry
- Service (Cloud Run) created previously on Google Cloud Run
- project: op-prj-dev, repository: op-grafana-monitor, image: op-grafana-monitor, local image: op-grafana-monitor