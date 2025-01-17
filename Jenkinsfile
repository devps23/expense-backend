pipeline{
    agent { node { label 'node1' } }
    stages{
         stage('Lint Code'){
            steps{
                sh env
                echo "Lint code"
            }
        }
        stage('Run Unit Tests'){
            steps{
                 echo "Run unit tests"
            }
        }
        stage('Run Integration Tests'){
            steps{
                echo "Run Integration Tests"
            }
        }
        stage('Sonar Scan Code Review'){
            steps{
                echo "Sonar Scan Code Review"
            }
        }
        stage('Build Code'){
            steps{
                 echo "Build Code"
            }
        }
        stage('Release Software'){
            steps{
                echo "Release Software"
            }
        }
   }
}

// 1. if it is a master: lint and codereview
//    2. if it is a developer: lint,unit tests,inte tests,Code Review
//    3. if it is a tag : npm install and Release.