###

- Build the Docker Image
  - docker build -t express-app:local .
  - docker run -d -p 3000:3000 --name express-test express-app:local
- View Logs (Optional)
- docker logs -f express-test
- Stop & Clean Up (Optional)
- docker stop express-test
- docker rm express-test
-

### GitLab CI/CD Secrets to Set

In GitLab > Project > Settings > CI/CD > Variables, add:

```
Key	Value

DOCKER_USERNAME =>	Your Docker Hub username
DOCKER_PASSWORD =>	Your Docker Hub password/token
EC2_HOST =>	user@your-ec2-public-ip
EC2_KEY =>	Paste your private SSH key
DOCKER_IMAGE_NAME => username/repo-name
```

### EC2 Instance Setup (One-Time Manual)

- SSH into your EC2 instance:

```
sudo apt update
sudo apt install -y docker.io
sudo usermod -aG docker ubuntu
newgrp docker
```

- Also allow port 80 in the EC2 security group.

### Test It

- Commit & push to the master branch.
- GitLab will build the Docker image and push it to Docker Hub.
- GitLab will SSH into EC2 and deploy the container.
