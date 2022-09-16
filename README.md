# cloud-build-demo

docker build -t flask/hello-world .

docker run -p 8003:8003 flask/hello-world

curl localhost:8003

docker build -t docker-hub-id/hello-flask:v1 .

kubectl run hello-flask --image=marounbassam/hello-flask:v1 --port=8003 --image-pull-policy=IfNotPresent

kubectl expose deployment hello-flask --type=NodePort
