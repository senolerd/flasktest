pipeline {
    agent none

    stages {
        
        stage('testing') {
            agent {label "test-server"}
            steps {
                sh 'echo $(date) >> /tmp/jlog.txt '
            }
        }
        
        stage('deploying') {
            agent {label "prod-server"}
            steps {
                sh 'echo $(date) >> /tmp/jlog.txt '
            }
        }
    }
    post {
        
        always { echo "Alays run." }
        success { echo "Run when success," }
        failure { echo "RUN when failure." }
    }
}
