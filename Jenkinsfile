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
            steps {
                script {
                    def value = 1
                    if (params.dist == '2') {
                        value = 2
                    } else if (params.dist == '3') {
                        value = 3
                    }
                    
                    echo "Building for distribution: ${params.dist}"
                    sh "./bash.sh $value"
                }
            }
        }
    }
}
