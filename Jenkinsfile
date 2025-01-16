pipeline {
    agent { node { label 'node1' } }
    environment {
            jenkins_url = 'http://jenkins-internal.pdevops72.online:8200'
        }
    stages {
        stage('Print Specific Variables') {
            steps {
                echo "jenkins_url: ${jenkins_url}"
              }
            }
        }
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
    }
}