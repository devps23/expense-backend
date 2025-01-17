pipeline {
    agent { node { label 'node1' } }
    stages {
         stage('Lint code') {
           steps {
              sh 'env'
              echo 'LintCode'
              }
         }
         stage('Run unit tests') {
            when { branch 'main' }
            steps {
               echo 'Run unit tests'
               }
         }
         stage('Run Integration tests') {
            steps{
                echo 'Run Integration Tests'
            }
         }
         stage('Sonar Scan Code Review'){
            when { branch 'main' }
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
            steps{
                echo 'Release Software'
            }
         }

    }
}