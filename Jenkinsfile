pipeline {
  agent any
  stages {
    stage('git_clone') {
      steps {
        git(url: 'https://github.com/jayaprakashdeav/onlinebookstore.git', branch: 'J2EE', credentialsId: 'git_token')
      }
    }

    stage('echo') {
      steps {
        echo 'Hello'
      }
    }

  }
}