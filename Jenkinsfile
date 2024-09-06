#!groovy
pipeline {
    agent none
   stages {     
   stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
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
