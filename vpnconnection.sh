gcloud compute --project "qwiklabs-gcp-00-01b6d83b3c1f" target-vpn-gateways create "vpn-1" --region "us-central1" --network "vpn-network-1"

gcloud compute --project "qwiklabs-gcp-00-01b6d83b3c1f" forwarding-rules create "vpn-1-rule-esp" --region "us-central1" --address "35.232.9.20" --ip-protocol "ESP" --target-vpn-gateway "vpn-1"

gcloud compute --project "qwiklabs-gcp-00-01b6d83b3c1f" forwarding-rules create "vpn-1-rule-udp500" --region "us-central1" --address "35.232.9.20" --ip-protocol "UDP" --ports "500" --target-vpn-gateway "vpn-1"

gcloud compute --project "qwiklabs-gcp-00-01b6d83b3c1f" forwarding-rules create "vpn-1-rule-udp4500" --region "us-central1" --address "35.232.9.20" --ip-protocol "UDP" --ports "4500" --target-vpn-gateway "vpn-1"

gcloud compute --project "qwiklabs-gcp-00-01b6d83b3c1f" vpn-tunnels create "vpn-1-tunnel-1" --region "us-central1" --peer-address "10.1.3.2" --shared-secret "gcprocks" --ike-version "2" --local-traffic-selector "0.0.0.0/0" --target-vpn-gateway "vpn-1"

gcloud compute --project "qwiklabs-gcp-00-01b6d83b3c1f" routes create "vpn-1-tunnel-1-route-1" --network "vpn-network-1" --next-hop-vpn-tunnel "vpn-1-tunnel-1" --next-hop-vpn-tunnel-region "us-central1" --destination-range "10.1.3.0/24"
