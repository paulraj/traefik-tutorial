
echo -e "\nDeleting existing custom resource definitions."
echo "kubectl delete -f crds/"
kubectl delete -f crds/

echo "Creating new custom resource definitions."
echo "kubectl create -f crds/"
kubectl create -f crds/
