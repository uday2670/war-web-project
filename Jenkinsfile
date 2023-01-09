pipeline {
    agent any
    tools{
        maven"m3"
    }
    stages{
        
        stage('git checkout'){
            steps{
                script{
                    git branch: 'master', url: 'https://github.com/uday2670/war-web-project.git'
                }
            }
        }  
        stage('junit'){
            steps{
                script{
                    sh " mvn test"
                }
            }
        }
       
       stage('maven build'){
            steps{
                script{
                    sh " mvn clean install"
                }
            }
       }
       stage('docker build'){
           steps{
               sh " docker build -t jnjn . "
               sh "docker run -d -p 9000:8080 jnjn"
           }
       }
    }
        } 
