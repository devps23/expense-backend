pipeline {
    agent { node { label 'node1' } }
    stages {
         stage('Lint code') {
           when { not {branch 'main' } }
           steps {
              sh 'env'
              echo 'LintCode'
              }
         }
         stage('Run unit tests') {
            when { not {branch 'main' } }
            steps {
               echo 'Run unit tests'
               }
         }
         stage('Run Integration tests') {
            when { not {branch 'main' } }
            steps{
                echo 'Run Integration Tests'
            }
         }
         stage('Sonar Scan Code Review'){
            when { not {branch 'main' } }
            steps{
                echo 'Sonar Scan Code Review'
            }
         }
         stage('Build Code'){

            steps{
                echo 'Build Code'
            }
         }
         stage('Release Software'){
            when { not {branch 'main' } }
            steps{
                echo 'Release Software'
            }
         }

    }
}