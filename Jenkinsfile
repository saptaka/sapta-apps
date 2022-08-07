pipeline {
    agent any

    stages {
        stage('Build image') {
            steps {
                def app = docker.build("gcr.io/sapta-cyber/restapi:v")
                app.push("v1")
            }
        }
    }
}
