pipeline {
  agent {
    node {
      label 'slave1'
    }

  }
  stages {
    stage('Git_clone') {
      steps {
        git(url: 'https://github.com/jayaprakashdeav/onlinebookstore.git', branch: 'J2EE', credentialsId: 'git_token')
      }
    }

    stage('Build') {
      steps {
        sh '''echo "task2"
sudo mvn clean package'''
      }
    }

    stage('Deploy') {
      steps {
        sh '''echo "task3"
sudo service tomcat9 stop
sudo cp  target/onlinebookstore-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/
sudo service tomcat9 start'''
      }
    }

  }
}