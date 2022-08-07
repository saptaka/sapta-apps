pipeline {
    agent any

    stages {
        stage('Build image') {
            steps {
                deff app = docker.build("gcr.io/sapta-cyber","restapi:v")
                app.push()
            }
        }
    }
}
