#!/user/bin/env groovy
 
 @Library('jenkins-shared-library')
 def gv
 
 pipeline {
    agent any

    stages {
        stage('init') {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage('build') {
            steps {
                script {
                    buildApp()
                }
            }
        }
        stage('test') {
            steps {
                script {
                    testApp()
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }
}
 