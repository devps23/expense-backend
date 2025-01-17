pipeline {
    agent { node { label 'node1' } }
    stages {
         stage('Lint code') {
           steps {
              echo 'LintCode'
              }
         }
         stage('Run unit tests') {
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