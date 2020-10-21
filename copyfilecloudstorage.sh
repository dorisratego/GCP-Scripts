#Download a file to Cloud Shell and copy it to Cloud Storage

gcloud config set account [student-02-7a0e6015e40c@qwiklabs.net]

gsutil cp cat.jpg gs://qwiklabs-gcp-02-5b11a01ac75c

gsutil cp gs://qwiklabs-gcp-02-5b11a01ac75c/cat.jpg gs://qwiklabs-gcp-02-5b11a01ac75c_2/cat.jpg
