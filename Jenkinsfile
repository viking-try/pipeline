pipeline {

  agent any

  stages {
    stage ('Build') {
      steps {
        sh '$WORKSPACE/jenkins/build/mvn.sh mvn -B -DskipTests clean package'
        sh '$WORKSPACE/jenkins/build/build.sh' 
      }
    }
    stage ('test') {
      steps {
        sh '''
           echo test
           '''
      }
    }
    stage ('Push') {
      steps {
        sh 'echo "pushing image"'
      }
    }
    stage ('deploy') {
      steps {
        sh 'echo deploy'
      }
    }

  }


}

