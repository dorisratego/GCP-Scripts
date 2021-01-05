gcloud compute networks create managementsubnet --project=qwiklabs-gcp-01-577703377197 --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional

gcloud compute networks subnets create managementsubnet-us --project=qwiklabs-gcp-01-577703377197 --range=10.130.0.0/20 --network=managementsubnet --region=us-central1
