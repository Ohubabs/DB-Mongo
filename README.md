# DB-Mongo
# DragonBall Project Part 5

## Project Objective

For this project, you are to setup a pipeline to deploy Mongo Database into DB cluster for connection with Java Spring App using Terraform with Kubernetes and Helm Providers.

## Database Pipeline 5

### Step 1: Go to New Item” from the Dashboard, select “Pipeline”, name it “Mongodb”.

![Screenshot 2024-06-24 at 2 57 17 PM](https://github.com/user-attachments/assets/2fdb4a12-433c-4e0a-837e-93afdfaadfc3)


### Step 2: Go to “Configuration”, Select “Poll SCM” and Enter the details for your GitHub repo & Jenkinsfile or copy and paste the Jenkinsfile in this repo.

![image](https://github.com/user-attachments/assets/89491f9f-2d6b-414d-a4ca-d58fe01c1ab7)



![Screenshot 2024-06-24 at 2 58 37 PM](https://github.com/user-attachments/assets/69597ad5-4a4d-4c23-b8c4-ec7deb123cf2)

### Step 3: Edit the mongodb.yml file with your mongodb credentials, storageclass to provision persistent storage for the database. and metrics enabled to be tracked by Prometheus.

![Screenshot 2024-06-24 at 6 10 35 PM](https://github.com/user-attachments/assets/250ecdcc-0e5d-421c-819c-f7c8fffea4d0)

![Screenshot 2024-06-24 at 6 11 23 PM](https://github.com/user-attachments/assets/3dbef2b3-4146-47e3-936a-085a5a9ba873)

![Screenshot 2024-06-24 at 6 12 13 PM](https://github.com/user-attachments/assets/dd78b231-be01-4d64-9f1c-923f9043b647)


### Step 4: Click “Build now” to run your pipeline with Maven, SonarQube, and Docker to Build, Test, Containerize and Push your Java Springboot Web app to DockerHub

![Screenshot 2024-06-24 at 6 15 02 PM](https://github.com/user-attachments/assets/34a915bc-9dad-46e9-8e27-ddce428322a7)

![Screenshot 2024-06-24 at 6 16 59 PM](https://github.com/user-attachments/assets/ff76381e-4896-4997-8137-8927758217ab)

![Screenshot 2024-06-24 at 6 17 07 PM](https://github.com/user-attachments/assets/d8ed553a-9f2e-46e0-bcf4-b3733930b2b7)

![Screenshot 2024-06-24 at 6 17 11 PM](https://github.com/user-attachments/assets/abcb7713-d3f1-4621-8ee3-accc108b8b65)

![Screenshot 2024-06-24 at 6 17 13 PM](https://github.com/user-attachments/assets/213a6d2e-ae6b-41f6-b497-3ba40b9ae3a9)

![Screenshot 2024-06-24 at 6 18 02 PM](https://github.com/user-attachments/assets/c34b2219-7fda-4d3d-985b-4404db42effe)

![Screenshot 2024-06-24 at 6 18 44 PM](https://github.com/user-attachments/assets/7682577e-bbc3-4a92-bfda-195c24d84f65)



