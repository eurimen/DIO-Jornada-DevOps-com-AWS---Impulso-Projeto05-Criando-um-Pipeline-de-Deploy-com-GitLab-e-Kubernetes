echo "Criando as imagens......."

docker build -t  eurimen/k8s-projeto5-dio:1.0 app/.

echo "realizando o push as imagens....."

docker push eurimen/k8s-projeto5-dio:1.0

echo "Criando servicos no cluster kurbenetes..."

kubectl apply -f ./load-balancer.yml

echo "Criando Secrects kurbenetes..."

kubectl apply -f ./secrets.yml

echo "Criando os deployments....."

kubectl apply -f ./app-deployment.yml
kubectl apply -f ./mysql-deployment.yml