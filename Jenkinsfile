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
                    def value
                    if (params.dist == 'value=2') {
                        value = 2
                    } else if (params.dist == 'value=3') {
                        value = 3
                    }
                    
                    echo "Building for distribution: ${params.dist}"
                    sh "chmod 777 bash.sh"
                    sh "./bash.sh $value"
                }
            }
        }
    }
}
