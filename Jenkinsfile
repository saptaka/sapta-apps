pipeline {
    agent any

    stages {
        
        stage('Build image') {
            app = docker.build("gcr.io/sapta-cyber","restapi:v")
        }
        stage('Push image') {
            docker.withRegistry('gcr.io/sapta-cyber/restapi:v1') {
                app.push("${env.BUILD_NUMBER}")
                app.push("latest")
            }
        }
    }
}
