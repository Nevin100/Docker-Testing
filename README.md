# 🐳 Docker-Testing

This repository is part of my hands-on learning journey with **Docker**, where I containerized a Node.js application and set up a MongoDB + Mongo Express environment using **Docker Compose**.  
I now feel confident with Docker, port binding, environment variables, and volumes!

---

## 📁 Project Structure
```bash 
📦 DOCKER-TESTING
├── Dockerfile # For building the Node.js container
├── mongoDb.yaml # Docker Compose file for MongoDB + Mongo Express
├── server.js # Simple Node.js/Express app
├── public/
│ └── index.html # Static frontend
├── package.json
└── README.md
```
---

## ⚙️ What I Practiced

- ✅ Try Dockerizing a Node.js application using a custom Dockerfile
- ✅ Using Docker Compose to manage multi-container applications
- ✅ Setting up environment variables for MongoDB authentication
- ✅ Port binding and container linking
- ✅ Understanding Docker volumes and persistent data from the tutorial

---
# 📦 mongoDb.yaml (Docker Compose) :
-> This Compose file spins up two containers:
```bash
MongoDB

Mongo Express (a web-based GUI for MongoDB)

services:
  mongo:
    image: mongo
    ports:
      - 27017:27017
    environment:
      MONGO_INITDB_ROOT_USERNAME: admin
      MONGO_INITDB_ROOT_PASSWORD: qwerty

  mongo-express:
    image: mongo-express
    depends_on:
      - mongo
    ports:
      - 8081:8081
    restart: always
    environment:
      ME_CONFIG_MONGODB_ADMINUSERNAME: admin
      ME_CONFIG_MONGODB_ADMINPASSWORD: qwerty
      ME_CONFIG_MONGODB_SERVER: mongo
      ME_CONFIG_MONGODB_ENABLE_ADMIN: true
      ME_CONFIG_MONGODB_AUTH_DATABASE: admin

```
# 🔒 Environment Variables :
<br/>

| Service       | Variable Name                     | Value    |
| ------------- | --------------------------------- | -------- |
| MongoDB       | `MONGO_INITDB_ROOT_USERNAME`      | `admin`  |
| MongoDB       | `MONGO_INITDB_ROOT_PASSWORD`      | `qwerty` |
| Mongo Express | `ME_CONFIG_MONGODB_ADMINUSERNAME` | `admin`  |
| Mongo Express | `ME_CONFIG_MONGODB_ADMINPASSWORD` | `qwerty` |
| Mongo Express | `ME_CONFIG_MONGODB_SERVER`        | `mongo`  |

<br/>

# ☁️ Final Thoughts

-> Through this project, I:
<br/>
-> Understood the Dockerfile lifecycle
<br/>
-> Linked multiple containers using Docker Compose
<br/>
-> Learned how to bind ports and pass environment variables
<br/>
-> Gained confidence in Docker volumes and persistent setups
