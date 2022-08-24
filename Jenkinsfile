pipeline {
  agent {
    node {
      label 'slave1'
    }

  }
  stages {
    stage('clean_and_git_clone') {
      steps {
//         sh 'sudo rm -r /opt/workspace/groovy_example_J2EE/*'
        git(url: 'https://github.com/jayaprakashdeav/onlinebookstore.git', branch: 'J2EE', credentialsId: 'git_token')
      }
    }

    stage('Build_project') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Deploy_project') {
      steps {
        sh '''sudo service tomcat9 stop
sudo cp  target/onlinebookstore-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/
sudo service tomcat9 start'''
      }
    }

  }
}
