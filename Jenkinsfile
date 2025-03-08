pipeline {
    agent any;
    stages {
        stage('Example1') {
            steps {
                sh 'env'
                echo "Example1"
            }
        }
        stage('Example2') {
            steps {
                echo "Example2"
            }
        }
        stage('Example3') {
            steps {
                echo "Example3"
            }
        }
    }
}

pipeline {
    agent {
      node {
        label 'ci-server'
      }
    }
    stages {
        stage('Example1') {
            steps {
                echo "Example1"
            }
        }
        stage('Example2') {
            steps {
                echo "Example2"
            }
        }
        stage('Example3') {
            steps {
                echo "Example3"
            }
        }

    }
}

// # environment
pipeline {
    agent {
      node {
        label 'ci-server'
      }
    }
    environment {
        url = "http://jenkins-internal.pdevops78.online:8080"
    }
    stages {
        stage('Example1') {
            steps {
                sh 'env'
                sh 'echo Example1'
                sh 'echo url'
            }
        }
        stage('Example2') {
            steps {
                sh 'echo Example2'
            }
        }
        stage('Example3') {
            steps {
                sh 'echo Example3'
            }
        }

    }
}