#!groovy
pipeline {
    agent none
   stages {     
    stage('Maven Install') {
      agent {         
       docker {          
        image 'maven:3.9.9-eclipse-temurin-21-alpine'        
        args '-u root'
     }       
   }       
   steps {
       sh 'mvn --version'
       sh 'mvn clean install'
       }
   }
   stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t ntndc2019/spring-petclinic:latest .'
      }
    }
   }
 }
