pipeline {
  agent any
  tools {
        maven 'myMaven'
        jdk 'Myjava'
    }
  environment {
    dockerhub=credentials('dockerhub')
  }  
  stages {
    stage ("clone the repository") {
      steps {
        git "https://github.com/engmagdy87/addressbook.git"
      }
    }
    stage ("compile and package the project") {
      steps {
        sh "mvn compile"
        sh "mvn package"
      }
    }
    stage ("dockerize the project") {
      steps {
        sh "echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin"
        sh "docker build -t mmagdy87/addressbook-assignment:latest ."
        sh "docker push mmagdy87/addressbook-assignment:latest"
      }
    }
  }
}
