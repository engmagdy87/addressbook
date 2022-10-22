pipeline {
 
  agent any
  tools {
        maven 'myMaven'
        jdk 'Myjava'
    }
  stages {
    stage ("clone the repository") {
      steps {
        git "https://github.com/upshiftnow/addressbook.git"
      }
    }
    stage ("compile the project") {
      steps {
        sh "mvn compile"
      }
    }
    stage ("Tests") {
      steps {
        sh "mvn test"
      }
    }
  }
}
