pipeline {
  agent {
    docker {
      image 'benderino/jenagent'
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
          sh '''cd warhello && docker build --tag=warhello .'''
          sh 'docker tag warhello benderino/warhello:1'
          withDockerRegistry(credentialsId: '386c70c4-be4d-4eb8-b9e8-6759025175f5') {
          sh 'docker push benderino/warhello:1'
}
        }
      }
 
  }
    

}