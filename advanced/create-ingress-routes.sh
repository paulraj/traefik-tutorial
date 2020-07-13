
echo -e "\nDeleting existing ingress routes in default namespace."
echo "kubectl delete -f ./ingress-routes/cxu-svcs-ingress-routes.yaml"
kubectl delete -f ./ingress-routes/cxu-svcs-ingress-routes.yaml

echo "Creating new ingress routes in default namespace."
echo "kubectl create -f ./ingress-routes/cxu-svcs-ingress-routes.yaml"
kubectl create -f ./ingress-routes/cxu-svcs-ingress-routes.yaml

echo -e "\nDeleting existing ingress routes in papi namespace."
echo "kubectl delete -f ./ingress-routes/papi-svcs-ingress-routes.yaml -n papi"
kubectl delete -f ./ingress-routes/papi-svcs-ingress-routes.yaml -n papi

echo "Creating new ingress routes in papi namespace."
echo "kubectl create -f ./ingress-routes/papi-svcs-ingress-routes.yaml -n papi"
kubectl create -f ./ingress-routes/papi-svcs-ingress-routes.yaml -n papi

echo -e "\nDeleting existing ingress routes on datascience namespace."
echo "kubectl delete -f ./ingress-routes/ds-svcs-ingress-routes.yaml -n datascience"
kubectl delete -f ./ingress-routes/ds-svcs-ingress-routes.yaml -n datascience

echo "Creating new ingress routes in datascience namespace."
echo "kubectl create -f ./ingress-routes/ds-svcs-ingress-routes.yaml -n datascience"
kubectl create -f ./ingress-routes/ds-svcs-ingress-routes.yaml -n datascience
