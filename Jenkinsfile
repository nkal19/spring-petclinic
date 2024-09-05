#!groovy
pipeline {
    agent {
        docker {
            image 'maven:latest'
        }
    }
    stages {
        stage ('Maven') {
            steps {
                withMaven() {
                    sh '$MVN_CMD clean install'
                }
            }
        }
    }
}
