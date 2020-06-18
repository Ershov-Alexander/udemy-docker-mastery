# pod creation
kubectl run

# create resources via CLI or YAML
kubectl create

# create / update via YAML
kubectl apply

# version
kubectl version

# run pod
kubectl run pod_name --image image_name

# list pod
kubectl get pods

# remove deployment
kubectl delete deployment pod_name

# create service for existing pods
kubectl expose

# aply commands from YAML
kubectl apply -f filename.yml

# describe resources
kubectl explain