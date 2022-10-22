pipeline {
 
  agent any
  tools {
        maven 'Maven 3.6.3'
        jdk 'jdk13'
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
