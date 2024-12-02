# Apply environment variables and secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

# Apply deployments
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml

# Apply services
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-service.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f reverseproxy-service.yaml

echo "All configurations have been applied."

## Check the deployment names and their pod status
kubectl get deployments
## Check name, ClusterIP, and External IP of all deployments
kubectl get services 
kubectl get pods # It should show the STATUS as Running

## Run these commands from the /udagram-frontend directory
# docker build . -t letienlocvn/udagram-frontend:latest
# docker push letienlocvn/udagram-frontend:latest
# kubectl set image deployment frontend frontend=letienlocvn/udagram-frontend:latest

