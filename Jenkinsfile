pipeline {
  agent {
    docker {
      image 'benderino/jenagent'
      args  '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
      stage ("Copy source from github"){
          steps {
          git 'https://github.com/aztecufa/war-hello.git'
          }
      }
      stage ("build") {
          steps {
              sh "mvn package"
          }
      }
      stage ("Make docker image"){
        steps {
          sh '''cd dockerbuild && docker build --tag=warhello .'''
          sh '''docker tag warhello benderino/warhello:1 && docker push benderino/warhello:1'''
        }
      }
 
  }
    

}