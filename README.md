# Assingment 1 - HI TEAM
## Prerequisites
Make sure you have the following software installed on your machine:

- Docker
- Docker Desktop

## Local Set-Up

Run Following Commands:

```
docker-compose up --build -d
```
Access the application in your web browser :
```
localhost:3000
```

#  Assingment 2 - HI TEAM
 - CI Process With GitHub Action. ( Path : .github/workflows/CI.Yaml ) 
 - DockerScout which seems to be a vulnerability scanner, scans the application for security risk.
 - After scanning the image build and pushed to the dockerhub. ( DockerHub Link : https://hub.docker.com/repository/docker/atanubiswas/hello-node/general )

 Creating A manifest File in Same Directory :
   - I Tested This Application In EKS Directly, Why Not local ( DockerDesktop Is a Heavy Application so I am failed to run this Test in local enviorment through MiniKube )

 Create EKS Cluster From UI :-

# 1. Create Role for EKS Cluster 
- Go to the AWS Management Console.
- Navigate to IAM (Identity and Access Management).
- Click on "Roles" and then click on "Create role".
- Choose "AWS Service" as the trusted entity.
- Choose "EKS-cluster" as the use case.
- Click "Next" and provide a name for the role. 

# 2. Create Role for EC2 Instances: 
- Go to the AWS Management Console. 
- Navigate to IAM (Identity and Access Management).
- Click on "Roles" and then click on "Create role". 
- Choose "AWS Service" as the trusted entity. 
- Choose "EC2" as the use case. 
- Click "Next". o Add policies: [AmazonEC2ContainerRegistryReadOnly, AmazonEKS_CNI_Policy, AmazonEBSCSIDriverPolicy, AmazonEKSWorkerNodePolicy].
- Provide a name for the role, e.g., "myNodeGroupPolicy". 

# 3. Create EKS Cluster:
- Go to the AWS Management Console. 
- Navigate to Amazon EKS service. 
- Click on "Create cluster". 
- Enter the desired name, select the version, and specify the role created in step 1. 
- Configure Security Group, Cluster Endpoint, etc.
- Click "Next" and proceed to create the cluster. 

# 4. Create Compute Resources:
- Go to the AWS Management Console. 
- Navigate to Amazon EKS service. 
- Click on "Compute" or "Node groups". 
- Provide a name for the computer resource. 
- Select the role created in step 2. 
- Select Node Type & Size.
- Click "Next" and proceed to create the compute resource.


# 5. Configure Cloud Shell: 
- Open AWS Cloud Shell or AWS CLI. 
- Execute the command:- “ aws eks update-kubeconfig --name demo-cluster --region ap-south-1 “

 These steps should help in setting up your EKS cluster along with necessary roles and compute resources.

# 6. We can Clone the code our Create A manifest file inside the EKS .
  ```
  git clone https://github.com/Atanub707/Adsremedy-Media-LLP.git
  cd Adsremedy-Media-LLP/manifestfile
  kubectl get deploymeny matrics-server -n kube-system
  kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
  kubectl apply -f Hello-NodeJS.yaml
  kubectl get all
  ```   
# 7. Last Part of test The stress test a Node.js application for optimal performance. But Unfortunatly I failed To test This Part due to some error which I am not able to get-it If you know the issue.
 # NOTE:- KINDLY PLEASE GIVE ME SOME FEEDBACK IF YOU KNOW THE ISSUE .
  ![Screenshot (347)](https://github.com/Atanub707/Adsremedy-Media-LLP/assets/103525450/cbba6aa0-c57d-45aa-b1e3-2a16b753665e)
