


echo "kubectl delete -f ./app/deployment.yaml"
kubectl delete -f ./app/deployment.yaml

echo "kubectl create -f ./app/deployment.yaml"
kubectl create -f ./app/deployment.yaml

echo -e "\nkubectl delete -f ./app/service.yaml"
kubectl delete -f ./app/service.yaml

echo "kubectl create -f ./app/service.yaml"
kubectl create -f ./app/service.yaml
