k delete configmap traefik-config -n integration
k create configmap traefik-config --from-file=./traefik-config -n integration
k delete -f ./app/deployment.yaml -n integration
k create -f ./app/deployment.yaml -n integration
