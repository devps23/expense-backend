
node('ci-server') {
    if (env.TAG_NAME ==~ '.*') {
        stage('Build Code') {
          docker build -t 041445559784.dkr.ecr.us-east-1.amazonaws.com/expense-backend:${TAG_NAME}
           print 'OK'
        }
        stage('Release Software') {
            aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 041445559784.dkr.ecr.us-east-1.amazonaws.com
            docker push -t 041445559784.dkr.ecr.us-east-1.amazonaws.com/expense-backend:${TAG_NAME}
           print 'OK'
        }
        stage('Deploy to Dev'){
           print 'OK'
        }
    } else {
        stage('Lint Code') {
            print 'OK'
        }
        if(env.BRANCH_NAME != 'main') {
            stage('Run Unit tests') {
                print 'OK'
            }
            stage('Run Integration tests') {
                print 'OK'
            }
        }
        stage('Sonar Scan Code Review') {
            print 'OK'
        }

    }

}



