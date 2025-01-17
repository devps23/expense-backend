pipeline {
    agent { node { label 'node1' } }
    stages {
         stage('Lint code') {
            when { not {buildingTag() }}
           steps {
              sh 'env'
              echo 'LintCode'
              }
         }
         stage('Run unit tests') {
             when { not {buildingTag() }}
            steps {
               echo 'Run unit tests'
               }
         }
         stage('Run Integration tests') {
             when { not {buildingTag() }}
            steps{
                echo 'Run Integration Tests'
            }
         }
         stage('Sonar Scan Code Review'){
             when { not {buildingTag() }}

            steps{
                echo 'Sonar Scan Code Review'
            }
         }
         stage('npm install'){
             when { not {buildingTag() }}
            steps{
                echo 'npm install'
            }
         }
         stage('Release Software'){
            when { buildingTag() }
            steps{
                echo 'Release Software'
            }
         }

    }
}