pipeline {
    agent { node { label 'node1' } }
    environment {
            jenkins_url = 'http://jenkins-internal.pdevops72.online:8200'
        }
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
        }
    stages {
        stage('Print Specific Variables') {
            steps {
                echo "jenkins_url: ${jenkins_url}"
              }
            }
        }
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
    }
}