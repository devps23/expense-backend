// pipeline {
//     agent { node { label 'ci-server'} }
//        stages {
//           stage('Example1') {
//              steps{
//                sh 'env'
//                sh 'echo example1'
//             }
//           }
//           stage('Example2') {
//              steps {
//                 sh 'echo example2'
//              }
//           }
//           stage('Example3') {
//              steps {
//                 sh 'echo example3'
//              }
//           }
//       }
// }
//
// // # condition check
// pipeline {
//     agent { node { label 'ci-server'} }
//        stages {
//           stage('Lint Code') {
//              when {
//                 not {  buildingTag()  }
//              }
//              steps{
//                sh 'env'
//                sh 'echo Lint Code'
//             }
//           }
//           stage('Unit tests') {
//              when {
//                  allOf {
//                      not {  buildingTag()  }
//                      branch 'main'
//                  }
//              }
//              steps {
//                 sh 'echo Unit tests'
//              }
//           }
//           stage('Integration tests') {
//              when {
//               allOf {
//                   not {  buildingTag()  }
//                   branch 'main'
//               }
//              }
//              steps {
//                 sh 'echo Integration tests'
//              }
//           }
//           stage('npm install'){
//
//              when { buildingTag() }
//              steps {
//                 sh 'echo npm install'
//              }
//           }
//           stage('code review') {
//             when {
//                not {  buildingTag()  }
//                }
//              steps {
//                 sh 'echo code review'
//              }
//           }
//           stage('Release Software') {
//              when { buildingTag() }
//              steps {
//                 sh 'env Release Software'
//              }
//           }
//       }
// }

//  Scripted Pipeline

node('ci-server'){

    stage('Lint Code') {
        steps{
            print 'env'
            print 'Lint Code'
        }
    }
    stage('unit tests') {
        steps{
            print 'Unit tests'
        }
    }
    stage('Integration tests'){
        steps{
            print 'Integration tests'
        }
    }
    stage('npm install'){
        steps {
            print 'npm install'
        }
    }
    stage('Release Software') {
        steps {
            print 'Release Software'
        }
    }
    stage('Code Review') {
        steps {
            print 'Code Review'
        }
    }


}

// if master: Lint and Code Review
// if developer: lint ,unit tests,integration tests,code review
// if tags: npm install release