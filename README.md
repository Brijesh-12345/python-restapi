# python-restapi
Install NGINX Ingress Controller:-
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
kubectl get svc -n ingress-nginx

DNS Configuration:-
Install cert-manager (for TLS / HTTPS):-
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/latest/download/cert-manager.yaml
kubectl get pods -n cert-manager
Create ClusterIssuer (Let’s Encrypt):
kubectl apply -f ci.yaml

test:
curl https://brijdev.shop/hello
test rate limiting:
for i in {1..20}; do curl https://brijdev.shop/hello; done
