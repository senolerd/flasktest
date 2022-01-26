pipeline {
    agent none

    stages {
        
        stage('testing') {
            agent {label "test-server"}
            steps {
                sh './run.sh'
            }
        }
        
//         stage('deploying') {
//             agent {label "prod-server"}
//             steps {
//                 sh 'echo $(date) >> /tmp/jlog.txt '
//             }
//         }
    }
    post {
        
        always { echo "Alays run." }
        success { sh "./run.sh" }
        failure { echo "RUN when failure." }
    }
}
