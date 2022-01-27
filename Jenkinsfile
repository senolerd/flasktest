pipeline {
    agent none

    stages {
        
        stage('testing') {
            agent {label "test-server"}
            steps {
                sh 'docker rm $(docker ps -aq) -f'
                sh 'docker build -t myapp:latest .'
                sh 'docker run -dit -p 8000:5000 -v $PWD:/www myapp'
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
