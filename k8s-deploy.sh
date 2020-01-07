curl -fsSL www.get.docker.com > idocker.sh
sudo chmod +x idocker.sh
./idocker.sh
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
sudo minikube start --vm-driver none
git clone https://github.com/Pranav-20186017/know_food_k8s_deployment.git
cd know_food_k8s_deployment
sudo minikube start --vm-driver none
sudo kubectl apply -f deploy-py.yaml

