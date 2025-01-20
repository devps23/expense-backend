node('node1'){
if (env.TAG_NAME ==~ '.*') {
stage('Build Code'){
print 'OK'
}
stage('Release Software'){
print 'OK'
}
}
else{
stage('Lint code'){
print 'OK'
}
}
if(env.BRANCH_NAME != 'main' ){
stage('Run unit tests'){
print 'OK'
}
stage('Run integration tests'){
print 'OK'
}
}
else{
stage('Sonar Scan Code Review'){
print 'OK'
}
}
}