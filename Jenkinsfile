#!groovy
pipeline {
    agent none
   stages {     
    stage('Maven Install') {
      agent {         
       docker {          
         image 'jelastic\maven:3.9.5-openjdk-21'        
     }       
  }       
  steps {
       sh 'mvn --version clean install'
       }
     }
   }
 }
