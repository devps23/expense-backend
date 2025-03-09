node('ci-server'){
if(TAG_NAME ==~ '.*'){
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
if(BRANCH_NAME !=main){
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


// if master: Lint and Code Review
// if developer: lint ,unit tests,integration tests,code review
// if tags: npm install release
