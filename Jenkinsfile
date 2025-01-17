pipeline {
    agent { node { label 'node1' } }
    stages {
         stage('Lint code') {
            when { allOf { not { buildingTag() }
                          branch 'main'
                        } }

           steps {
              sh 'env'
              echo 'LintCode'
              }
         }
         stage('Run unit tests') {
            when { allOf { not { buildingTag() }
                           branch 'main' } }
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
         stage('npm install'){
             when { buildingTag() }
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


