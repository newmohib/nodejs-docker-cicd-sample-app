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
