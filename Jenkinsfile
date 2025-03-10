node('ci-server') {
    stage ('code checkout'){
        sh "find ."
        if(env.TAG_NAME ==~ ".*") {
            env.branch_name = "refs/tags/${env.TAG_NAME}"
        } else {
            env.branch_name = "${env.BRANCH_NAME}"
        }
        checkout([$class: 'GitSCM',
          branches: [[name: "${branch_name}"]],
          userRemoteConfigs: [[url: "https://github.com/devps23/expense-backend"]]]
        )
    }
    if (env.TAG_NAME ==~ '.*') {
        stage('Build Code') {
           sh 'env'
           sh 'docker build -t 041445559784.dkr.ecr.us-east-1.amazonaws.com/expense-backend:${TAG_NAME} .'
           print 'OK'
        }
        stage('Release Software') {
           sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 041445559784.dkr.ecr.us-east-1.amazonaws.com'
           sh 'docker push -t 041445559784.dkr.ecr.us-east-1.amazonaws.com/expense-backend:${TAG_NAME}'
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



