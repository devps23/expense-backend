// pipeline {
//     agent any;
//     stages {
//         stage('Example1') {
//             steps {
//                 sh 'env'
//                 echo "Example1"
//             }
//         }
//         stage('Example2') {
//             steps {
//                 echo "Example2"
//             }
//         }
//         stage('Example3') {
//             steps {
//                 echo "Example3"
//             }
//         }
//     }
// }

pipeline {
    agent {
      node {
        label 'ci-server'
      }
    }
    stages {
        stage('Example1') {
            steps {
                sh 'env'
                echo "Example1"
            }
        }
        stage('Example2') {
            steps {
                echo "Example2"
            }
        }
        stage('Example3') {
            steps {
                echo "Example3"
            }
        }

    }
}

// // # environment
// pipeline {
//     agent {
//       node {
//         label 'ci-server'
//       }
//     }
//     environment {
//         url = "http://jenkins-internal.pdevops78.online:8080"
//     }
//     stages {
//         stage('Example1') {
//             steps {
//                 sh 'env'
//                 sh 'echo Example1'
//                 sh 'echo url'
//             }
//         }
//         stage('Example2') {
//             steps {
//                 sh 'echo Example2'
//             }
//         }
//         stage('Example3') {
//             steps {
//                 sh 'echo Example3'
//             }
//         }
//
//     }
// }
// // # parameters this will add as "Vuild parameters ion jenkins dashboard"
// pipeline {
//     agent { node { label 'ci-server' } }
//     parameters {
//             string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
//
//             text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
//
//             booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
//
//             choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
//
//             password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
//         }
//        stages {
//           stage('Example1') {
//              steps {
//                 sh 'echo Example1'
//              }
//           }
//           stage('Example2') {
//              steps {
//                 sh 'echo Example2'
//              }
//           }
//           stage('Example3'){
//              steps {
//                 sh 'echo Example3'
//              }
//           }
//
//        }
// }
//
// // # input condition
// pipeline {
//     agent { node { label 'ci-server'} }
//         stages {
//             stage('Example1'){
//                input {
//                    message "Should we continue?"
//                    ok "Yes, we should."
//                    submitter "alice,bob"
//                    }
//                steps{
//                   sh 'echo Example1'
//                }
//             }
//             stage('Example2'){
//                steps{
//                   sh 'echo Example2'
//                }
//             }
//             stage('Example3'){
//                steps{
//                   sh 'echo Example3'
//                }
//             }
//         }
// }
// // # when
// pipeline {
//     agent { node { label 'ci-server' } }
//         stages {
//             stage('Example1'){
//                 steps {
//                     sh 'echo Example1'
//                 }
//             stage('Example2'){
//                  when {
//                      triggeredBy 'SCMTrigger'
//                  }
//                 steps {
//                     sh 'echo Example2'
//                 }
//             }
//             stage('Example3'){
//                 steps {
//                     sh 'echo Example3'
//                 }
//             }
//             }
//         }
// }