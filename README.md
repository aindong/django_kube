# Django Kube

The goal of this project is create a working django app with Django-Rest-Framework 
to run on development using docker-compose and deploy on production with the same settings
in Kubernetes.

#### Technology
- Django with Django Rest Framework
- PostgreSQL
- Nginx
- Docker
- Docker Compose
- Kubernetes with minikube

#### How to run?
1. Clone the repository
2. go into the folder where you clone the repository
3. make sure your minikube is running
4. in terminal run `cd k8s`
5. `kubectl create -f .`
6. wait for the kubernetes deployment to finish, view the status using `kubectl get deployments`
7. once everything is started get the NodePort of `nginx` using `kubectl get service/nginx`
8. under ports you will see something similar to `8000:30775/TCP` in my case it is `30775`
9. now execute `open $(minikube ip):30775` a browser will open with the ip of the minikube and the nodeport
