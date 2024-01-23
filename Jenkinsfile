pipeline {
    agent any

    stages {
        stage('SonarQube Analysis') {
            steps {
                script {
                    def scannerHome = tool 'sonarqubecloud-configure-tools'
                    withSonarQubeEnv('sonarqubecloud') {
                        sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }
        
        stage('Choose Distribution') {
            parameters {
                choice choices: ['value=2'=2, 'value=3'=3], description: 'Choose your favorite distribution', name: 'dist'
            }
            steps {
                echo "Building for distribution: ${params.dist}"
            }
        }
        
        stage('Execute bash.sh') {
            steps {
                script {
                    def value = 1
                    if (params.dist == '2') {
                        value = 2
                    } else if (params.dist == '3') {
                        value = 3
                    }
                    
                    sh "./bash.sh $value"
                }
            }
        }
    }
