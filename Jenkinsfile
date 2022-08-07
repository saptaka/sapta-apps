pipeline {
    agent any

    stages {
        
        stage('Build image') {
          deff app = docker.build("gcr.io/sapta-cyber","restapi:v")
          app.push()
        }
    }
}
