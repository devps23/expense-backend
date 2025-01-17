pipleline{
    agent
    {
    node 'node1'
    }
   stages{
    stage('Lint Code'){
    sh env
        echo "Lint code"
    }
    stage('Run Unit Tests'){
        echo "Run unit tests"
    }
    stage('Run Integration Tests'){
        echo "Run Integration Tests"
    }
    stage('Sonar Scan Code Review'){
        echo "Sonar Scan Code Review"
    }
    stage('Build Code'){
        echo "Build Code"
    }
    stage('Release Software'){
        echo "Release Software"
    }
   }
}

// 1. if it is a master: lint and codereview
//    2. if it is a developer: lint,unit tests,inte tests,Code Review
//    3. if it is a tag : npm install and Release.