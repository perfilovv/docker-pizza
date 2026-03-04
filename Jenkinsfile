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
                buildApp()
            }
        }
        stage('test') {
            steps {
                testApp()
            }
        }
        stage('deploy') {
            steps {
                gv.testApp()
            }
        }
    }
}
 