namespace=$1

# create cluster role "traefik-ingress-controller"
# clusterrole is not at namespace level
echo "kubectl create -f cluster-role.yaml"
kubectl delete -f ./rbac/cluster-role.yaml
echo "kubectl create -f cluster-role.yaml"
kubectl create -f ./rbac/cluster-role.yaml

# create service account "traefik-ingress-controller"
echo "kubectl delete -f service-account.yaml -n $namespace" 
kubectl delete -f ./rbac/service-account.yaml -n $namespace
echo "kubectl create -f service-account.yaml -n $namespace"
kubectl create -f ./rbac/service-account.yaml -n $namespace

# create cluster role binding 
echo "kubectl delete -f cluster-role-binding.yaml -n $namespace"
kubectl delete -f ./rbac/cluster-role-binding.yaml -n $namespace
echo "kubectl create -f cluster-role-binding.yaml -n $namespace"
kubectl create -f ./rbac/cluster-role-binding.yaml -n $namespace
