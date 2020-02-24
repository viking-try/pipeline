pipeline {

  agent any
  environment {
  USERD = credentials('doku')
  PASSD = credentials('dokp')
  RMIP = credentials('ipRM')

  }

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
           sh $WORKSPACE/jenkins/test/mvn.sh mvn test
           '''
      }
    }
    stage ('Push') {
      steps {
        sh 'sh $WORKSPACE/jenkins/push/push.sh'
      }
    }
    stage ('deploy') {
      steps {
        sh 'sh $WORKSPACE/jenkins/deploy/deploy.sh'
      }
    }

  }


}

