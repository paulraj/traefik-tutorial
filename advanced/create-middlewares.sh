


echo "kubectl delete -f middlwares/"
kubectl delete -f middlewares/

echo "kubectl create -f middlewares/"
kubectl create -f middlewares/ 

echo -e "\nkubectl delete -f middlwares/ -n papi"
kubectl delete -f middlewares/ -n papi

echo "kubectl create -f middlewares/ -n papi"
kubectl create -f middlewares/ -n papi

echo -e "\nkubectl delete -f middlewares/ -n datascience"
kubectl delete -f middlewares/ -n datascience

echo "kubectl create -f middlewares/ -n datascience"
kubectl create -f middlewares/ -n datascience
