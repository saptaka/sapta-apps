pipeline {
    agent any

    stages {
        stage('Build image') {
            steps {
                script {
                    def app = docker.build("gcr.io/sapta-cyber/restapi:v")
                    app.push("v1")
                }
            }
        }
    }
}
