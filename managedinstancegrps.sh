gcloud compute --project "qwiklabs-gcp-1a0e709fe3e79a62" health-checks create tcp "http-health-check" --timeout "5" --check-interval "10" --unhealthy-threshold "3" --healthy-threshold "2" --port "80"

gcloud beta compute --project=qwiklabs-gcp-1a0e709fe3e79a62 instance-groups managed create europe-west1-mig --base-instance-name=europe-west1-mig --template=mywebserver-template --size=1 --zone=europe-west1-b --health-check=http-health-check --initial-delay=60

gcloud beta compute --project "qwiklabs-gcp-1a0e709fe3e79a62" instance-groups managed set-autoscaling "urope-west1-mig" --zone "europe-west1-b" --cool-down-period "60" --max-num-replicas "2" --min-num-replicas "1" --target-load-balancing-utilization "0.8" --mode "on"
