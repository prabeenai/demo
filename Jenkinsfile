pipeline {
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('Build with Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/prabeenai/demo']])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                    bat 'docker build -t prabeenai/demo-app .'
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                        bat 'docker login -u prabeensubudhi -p Subudhi@99'
                }
            }
        }
    }
}