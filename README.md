# python-restapi
nginx Cloud / Generic Kubernetes:
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml

kubectl get pods -n ingress-nginx

Install cert-manager (for TLS / HTTPS):-
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/latest/download/cert-manager.yaml

kubectl get pods -n cert-manager

kubectl get certificate
kubectl describe certificate brijdev-shop-tls

Test Rate Limiting:-

for i in {1..20}; do curl https://brijdev.shop/hello; done
