#!groovy
pipeline {
    agent none
   stages {     
     stage('Initialize'){
        agent {
                docker {
                    image 'jelastic/maven:3.9.5-openjdk-21'
                    reuseNode true
                }
            }
            steps {
                sh 'gradle --version'
            }
      }
    stage('Maven Install') {
      agent {         
       docker {          
         image 'maven:latest'         
     }       
  }       
  steps {
       sh 'mvn clean install'
       }
     }
   }
 }
