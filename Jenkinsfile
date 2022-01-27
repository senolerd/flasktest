pipeline {
    agent none

    stages {
         
        stage('testing') {
            agent {label "test-server"}
            steps {
                sh 'if [ $(docker ps -aq) ]; then docker rm $(docker ps -aq) -f; fi'
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
        
        always { echo "Always run." }
        success { echo "Success!!!" }
        failure { echo "Run when failure." }
    }
}
