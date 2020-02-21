pipeline {

  agent any

  stages {
    stage ('Build') {
      steps {
        sh 'sh $WORKSPACE/jenkins/build/mvn.sh mvn -B -DskipTests clean package'
        sh 'sh $WORKSPACE/jenkins/build/build.sh' 
      }
    }
    stage ('test') {
      steps {
        sh '''
           sh $WORKSPACE/jenkins/build/mvn.sh mvn test
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

