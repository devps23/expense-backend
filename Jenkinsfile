node('ci-server'){
if(env.TAG_NAME ==~ '.*'){
  stage('npm install') {
      print 'OK'
      }
  stage('Release Software') {
      print 'OK'
      }
 }
 else {
  stage('Lint Code') {
     print 'OK'
     }
}
if(env.BRANCH_NAME != 'main'){
  stage('unit tests') {
       print 'OK'
   }
  stage('integration tests') {
        print 'OK'
  }
}
else {
  stage('Code Review') {
    print 'OK'
  }
}
}

